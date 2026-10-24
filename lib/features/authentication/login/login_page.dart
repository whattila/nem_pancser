import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nem_pancser/features/authentication/login/bloc/login.bloc.dart';
import 'package:nem_pancser/features/authentication/login/bloc/login.event.dart';
import 'package:nem_pancser/features/authentication/login/bloc/login.state.dart';
import 'package:nem_pancser/features/authentication/login/models/login.dto.dart';
import 'package:password_text_field/password_text_field.dart';

import '../../../shared/router/app_router.dart';
import '../../../shared/widgets/pancser_background.dart';
import '../../../shared/widgets/pancser_button.dart';
import '../repository/auth.repository.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(context.read<AuthRepository>()),
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            context.router.replaceAll([const DashboardRoute()]);
          } else if (state is LoginError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        },
        child: const LoginView(),
      ),
    );
  }
}

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();

  late String _username;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PancserBackground(
        content: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/images/images.jpeg",
                  height: 200,
                ),
                const SizedBox(height: 40),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Felhasználónév',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                  onSaved: (value) => _username = value!,
                  validator: (value) => _validateNotEmpty(value, 'Kérjük adja meg felhasználónevét!'),
                ),
                const SizedBox(height: 16),
                PasswordTextFormField(
                  initialObscurity: true,
                  decoration: const InputDecoration(
                    labelText: 'Jelszó',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                  ),
                  onSaved: (value) => _password = value!,
                  validator: (value) => _validateNotEmpty(value, 'Kérjük adja meg jelszavát!'),
                ),
                const SizedBox(height: 24),
                PancserButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      _formKey.currentState?.save();
                      context.read<LoginBloc>().add(
                        LoginRequested(
                          loginData: LoginDto(
                            username: _username,
                            password: _password,
                          ),
                        ),
                      );
                    }
                  },
                  text: 'BEJELENTKEZÉS',
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    context.router.push(const RegistrationRoute());
                  },
                  child: const Text(
                    'Még nincs fiókom? Regisztráció',
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String? _validateNotEmpty(String? value, String? errorMessage) =>
      value == null || value.isEmpty ?
          errorMessage ?? 'Kérjük töltse ki ezt a mezőt!'
          : null;
}
