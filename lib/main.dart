import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nem_pancser/features/buy/cart/service/cart.dart';
import 'package:nem_pancser/features/buy/shared/items_repository.dart';

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
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => ItemsRepository()),
        RepositoryProvider(create: (context) => Cart()),
      ],
      child: MaterialApp.router(
        title: 'Nem Pancser',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
