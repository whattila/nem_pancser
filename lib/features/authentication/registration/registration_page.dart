import 'package:auto_route/auto_route.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nem_pancser/features/authentication/registration/bloc/registration.bloc.dart';
import 'package:nem_pancser/features/authentication/registration/bloc/registration.event.dart';
import 'package:nem_pancser/features/authentication/registration/bloc/registration.state.dart';
import 'package:nem_pancser/features/authentication/registration/models/address.dto.dart';
import 'package:nem_pancser/features/authentication/registration/models/registration.dto.dart';
import 'package:password_text_field/password_text_field.dart';

import '../../../shared/router/app_router.dart';
import '../../../shared/widgets/pancser_button.dart';
import '../repository/auth.repository.dart';

@RoutePage()
class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegistrationBloc(context.read<AuthRepository>()),
      child: BlocListener<RegistrationBloc, RegistrationState>(
        listener: (context, state) {
          if (state is RegistrationSuccess) {
            context.router.replaceAll([const DashboardRoute()]);
          } else if (state is RegistrationError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        },
        child: const RegistrationView(),
      ),
    );
  }
}

class RegistrationView extends StatefulWidget {
  const RegistrationView({super.key});

  @override
  State<RegistrationView> createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<RegistrationView> {
  final _formKey = GlobalKey<FormState>();

  final _passwordController = TextEditingController();
  bool _subscribeToNewsletter = false;
  late String _username;
  late String _familyName;
  late String _givenName;
  late String _city;
  late String _place;
  late String _number;
  String? _staircase;
  String? _floor;
  String? _door;
  String? _bell;
  late String _email;
  late String _phone;
  late String _password;

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Center(
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Regisztráció',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent,
                      ),
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUnfocus,
                      decoration: const InputDecoration(
                        labelText: 'Felhasználónév',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                      ),
                      validator: _validateUsername,
                      onSaved: (value) => _username = value!,
                    ),
                    const Text(
                      'A felhasználónév csak betűt és számot tartalmazhat, és legalább egy betűt',
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUnfocus,
                      decoration: const InputDecoration(
                        labelText: 'Vezetéknév',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person_outline),
                      ),
                      keyboardType: TextInputType.name,
                      validator: (value) => _validateCommon(value, 'Kérjük adja meg vezetéknevét!'),
                      onSaved: (value) => _familyName = value!,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUnfocus,
                      decoration: const InputDecoration(
                        labelText: 'Keresztnév',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person_outline),
                      ),
                      keyboardType: TextInputType.name,
                      validator: (value) => _validateCommon(value, 'Kérjük adja meg keresztnevét!'),
                      onSaved: (value) => _givenName = value!,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUnfocus,
                      decoration: const InputDecoration(
                        labelText: 'Város',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.location_city),
                      ),
                      keyboardType: TextInputType.text,
                      validator: _validateCity,
                      onSaved: (value) => _city = value!,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUnfocus,
                      decoration: const InputDecoration(
                        labelText: 'Utca vagy tér',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.location_on),
                      ),
                      validator: (value) => _validateCommon(value, 'Kérjük adja meg az utcát vagy teret!'),
                      onSaved: (value) => _place = value!,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUnfocus,
                      decoration: const InputDecoration(
                        labelText: 'Házszám',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.home),
                      ),
                      validator: (value) => _validateCommon(value, 'Kérjük adja meg a házszámot!'),
                      onSaved: (value) => _number = value!,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUnfocus,
                      decoration: const InputDecoration(
                        labelText: 'Lépcsőház',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.stairs),
                      ),
                      onSaved: (value) => _staircase = value,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUnfocus,
                      decoration: const InputDecoration(
                        labelText: 'Emelet',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.layers),
                      ),
                      onSaved: (value) => _floor = value,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUnfocus,
                      decoration: const InputDecoration(
                        labelText: 'Ajtó',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.door_front_door),
                      ),
                      onSaved: (value) => _door = value,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUnfocus,
                      decoration: const InputDecoration(
                        labelText: 'Kapucsengő',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.notifications),
                      ),
                      onSaved: (value) => _bell = value,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUnfocus,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: _validateEmail,
                      onSaved: (value) => _email = value!,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUnfocus,
                      decoration: const InputDecoration(
                        labelText: 'Telefonszám',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.phone),
                      ),
                      keyboardType: TextInputType.phone,
                      validator: (value) => _validateCommon(value, 'Kérjük adja meg a telefonszámot!'),
                      onSaved: (value) => _phone = value!,
                    ),
                    const SizedBox(height: 16),
                    PasswordTextFormField(
                      initialObscurity: true,
                      autovalidateMode: AutovalidateMode.onUnfocus,
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        labelText: 'Jelszó',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                      ),
                      validator: _validatePassword,
                      onSaved: (value) => _password = value!,
                    ),
                    const Text(
                      'A jelszó legalább 8 karakter, és tartalmaznia kell kisbetűt, nagybetűt, számot és speciális karaktert.',
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                    const SizedBox(height: 16),
                    PasswordTextFormField(
                      initialObscurity: true,
                      autovalidateMode: AutovalidateMode.onUnfocus,
                      decoration: const InputDecoration(
                        labelText: 'Jelszó megerősítése',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock_reset),
                      ),
                      validator: _validatePasswordConfirm,
                    ),
                    const SizedBox(height: 16),
                    CheckboxFormField(
                      title: const Text('Hírlevelet kérek'),
                      initialValue: _subscribeToNewsletter,
                      onSaved: (value) => _subscribeToNewsletter = value ?? false,
                    ),
                    const SizedBox(height: 24),
                    PancserButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          _formKey.currentState?.save();
                          context.read<RegistrationBloc>().add(
                                RegistrationRequested(
                                  registrationData: RegistrationDto(
                                    username: _username,
                                    email: _email,
                                    password: _password,
                                    familyName: _familyName,
                                    givenName: _givenName,
                                    phoneNumber: _phone,
                                    address: AddressDto(
                                      city: _city,
                                      place: _place,
                                      number: _number,
                                      staircase: _staircase,
                                      floor: _floor,
                                      door: _door,
                                      bell: _bell
                                    ),
                                    subscribeToNewsletter: _subscribeToNewsletter
                                  ),
                                ),
                              );
                        }
                      },
                      text: 'REGISZTRÁLOK',
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  String? _validateCommon(String? value, String? errorMessage) =>
      _isNullOrEmpty(value) ?
          errorMessage ?? 'Kérjük töltse ki ezt a mezőt!'
          : null;

  String? _validateUsername(String? value) {
    if (_isNullOrEmpty(value)) {
      return 'Kérjük adjon meg egy felhasználónevet!';
    }
    if (!RegExp(r'^[a-zA-Z]+[0-9]*$').hasMatch(value!)) {
      return 'Érvénytelen karater vagy nincs betű!';
    }
    return null;
  }

  String? _validateCity(String? value) {
    if (_isNullOrEmpty(value)) {
      return 'Kérjük adja meg a várost!';
    }
    if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value!)) {
      return 'A város csak betűt tartalmazhat!';
    }
    return null;
  }

  String? _validateEmail(String? value) {
    if (_isNullOrEmpty(value)) {
      return 'Kérjük adja meg az email címét!';
    }
    if (!EmailValidator.validate(value!)) {
      return 'Érvénytelen email formátum!';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (_isNullOrEmpty(value)) {
      return 'A jelszó megadása kötelező.';
    }
    if (value!.length < 8) {
      return 'A jelszó legalább 8 karakter hosszú legyen.';
    }
    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return 'A jelszóban legyen nagybetű.';
    }
    if (!RegExp(r'[a-z]').hasMatch(value)) {
      return 'A jelszóban legyen kisbetű.';
    }
    if (!RegExp(r'\d').hasMatch(value)) {
      return 'A jelszóban legyen szám.';
    }
    if (!RegExp(r'[!@#$%^&*(),.?":{}|<>`~\-_\[\]\\;/€£]').hasMatch(value)) {
      return 'A jelszóban legyen speciális karakter (vagy nem megfelelő speciális karaktert adtál meg).';
    }
    return null;
  }

  String? _validatePasswordConfirm(String? value) =>
      value != _passwordController.text ? 'A két jelszó nem egyezik.' : null;

  bool _isNullOrEmpty(String? value) =>
      value == null || value.isEmpty;
}

class CheckboxFormField extends FormField<bool> {
  CheckboxFormField({
    super.key,
    Widget? title,
    super.onSaved,
    super.validator,
    bool super.initialValue = false,
  }) : super(
          builder: (FormFieldState<bool> state) {
            return CheckboxListTile(
              title: title,
              value: state.value,
              onChanged: state.didChange,
              subtitle: state.hasError
                  ? Text(
                      state.errorText ?? "",
                      style: TextStyle(
                        color: Theme.of(state.context).colorScheme.error,
                        fontSize: 12,
                      ),
                    )
                  : null,
              controlAffinity: ListTileControlAffinity.leading,
              contentPadding: EdgeInsets.zero,
            );
          },
        );
}
