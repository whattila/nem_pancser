import 'package:auto_route/auto_route.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import '../../../shared/router/app_router.dart';
import '../../../shared/widgets/pancser_button.dart';

@RoutePage()
class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();

  final _passwordController = TextEditingController();
  bool _isNewsletterChecked = false;

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
                      decoration: const InputDecoration(
                        labelText: 'Felhasználónév',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                      ),
                      validator: _validateUsername,
                    ),
                    const Text(
                      'A felhasználónév csak betűt és számot tartalmazhat',
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Vezetéknév',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person_outline),
                      ),
                      validator: (value) => _validateCommon(value, 'Kérjük adja meg vezetéknevét!'),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Keresztnév',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person_outline),
                      ),
                      validator: (value) => _validateCommon(value, 'Kérjük adja meg keresztnevét!'),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Város',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.location_city),
                      ),
                      validator: (value) => _validateCommon(value, 'Kérjük adja meg a várost!'),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Utca vagy tér',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.location_on),
                      ),
                      validator: (value) => _validateCommon(value, 'Kérjük adja meg az utcát vagy teret!'),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Házszám',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.home),
                      ),
                      validator: (value) => _validateCommon(value, 'Kérjük adja meg a házszámot!'),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Lépcsőház',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.stairs),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Emelet',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.layers),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Ajtó',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.door_front_door),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Kapucsengő',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.notifications),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: _validateEmail,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Telefonszám',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.phone),
                      ),
                      keyboardType: TextInputType.phone,
                      validator: (value) => _validateCommon(value, 'Kérjük adja meg a telefonszámot!'),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Jelszó',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                      ),
                      validator: _validatePassword,
                    ),
                    const Text(
                      'A jelszó legalább 8 karakter, és tartalmaznia kell kisbetűt, nagybetűt, számot és speciális karaktert.',
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      obscureText: true,
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
                      initialValue: _isNewsletterChecked,
                      onSaved: (value) => _isNewsletterChecked = value ?? false,
                    ),
                    const SizedBox(height: 24),
                    PancserButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          _formKey.currentState?.save();
                          context.router.replaceAll([const DashboardRoute()]);
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

  @override
  void dispose() {
    super.dispose();
    _passwordController.dispose();
  }

  String? _validateCommon(String? value, String? errorMessage) =>
      value == null || value.isEmpty ?
        errorMessage ?? 'Kérjük töltse ki ezt a mezőt!'
        : null;

  String? _validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Kérjük adjon meg egy felhasználónevet!';
    }
    if (value.length < 3 || value.length > 20) {
      return 'A felhasználónévnek 3 és 20 karakter között kell lennie!';
    }
    if (!RegExp(r'^[a-zA-Z0-9]+$').hasMatch(value)) {
      return 'A felhasználónév csak alfanumerikus karaktereket tartalmazhat!';
    }
    return null;
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Kérjük adja meg az email címét!';
    }
    if (!EmailValidator.validate(value)) {
      return 'Érvénytelen email formátum!';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'A jelszó megadása kötelező.';
    }
    if (value.length < 8) {
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
