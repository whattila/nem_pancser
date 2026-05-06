import 'package:flutter/material.dart';

import 'features/shared/router/app_router.dart';

void main() {
  runApp(NemPancserApp());
}

class NemPancserApp extends StatelessWidget {
  NemPancserApp({super.key});

  // make sure you don't initiate your router
  // inside of the build function.
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Nem Pancser',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      routerConfig: _appRouter.config(),
    );
  }
}
