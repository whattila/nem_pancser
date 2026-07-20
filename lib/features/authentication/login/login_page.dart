import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../shared/router/app_router.dart';
import '../../../shared/widgets/pancser_background.dart';
import '../../../shared/widgets/pancser_button.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // A SafeArea biztosítja, hogy a tartalom ne lógjon bele a notch-ba vagy a tálcába
      body: PancserBackground(
        content: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min, // <- fontos!
            children: [
              // Címfelirat
              Image.asset(
                "assets/images/images.jpeg",
                height: 200,
              ),
              const SizedBox(height: 40),

              // Felhasználónév mező
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Felhasználónév',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 16),

              // Jelszó mező
              const TextField(
                obscureText: true, // Elrejti a karaktereket
                decoration: InputDecoration(
                  labelText: 'Jelszó',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              const SizedBox(height: 24),

              // Bejelentkezés gomb
              PancserButton(
                onPressed: () { context.router.replaceAll([const DashboardRoute()]); }, // Egyelőre üres
                text: 'BEJELENTKEZÉS',
              ),

              // Kis kihagyott hely
              const SizedBox(height: 20),

              // Regisztráció gomb
              TextButton(
                onPressed: () { context.router.push(const RegistrationRoute()); }, // Egyelőre üres
                child: const Text(
                  'Még nincs fiókom? Regisztráció',
                  style: TextStyle(color: Colors.blueGrey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}