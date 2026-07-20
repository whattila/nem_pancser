import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../shared/router/app_router.dart';
import '../../shared/widgets/pancser_button.dart';

@RoutePage()
class ProfileDataPage extends StatelessWidget {
  const ProfileDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'PROFIL',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFD35400),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const ProfileRow(label: 'E-mail:', value: 'ahhidati070@gmail.com'),
              const ProfileRow(label: 'Név:', value: 'Hidán Attila'),
              const ProfileRow(label: 'Telefonszám:', value: '06309846500'),
              const ProfileRow(label: 'Város:', value: 'Dunakeszi'),
              const ProfileRow(label: 'Utca:', value: 'Kazinczy utca'),
              const ProfileRow(label: 'Házszám:', value: '19'),
              const ProfileRow(label: 'Lépcsőház:', value: ''),
              const ProfileRow(label: 'Emelet:', value: ''),
              const ProfileRow(label: 'Ajtó:', value: ''),
              const ProfileRow(label: 'Kapucsengő:', value: ''),
              const ProfileRow(label: 'Hírlevelet kérek:', value: 'nem'),
              const ProfileRow(label: 'Pancser Pengők:', value: '7754 PP'),
              const SizedBox(height: 40),
              PancserButton(
                onPressed: () { context.router.push(const ProfileEditRoute()); },
                text: 'Adatmódosítás',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileRow extends StatelessWidget {
  final String label;
  final String value;

  const ProfileRow({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
