import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nem_pancser/features/buy/cart/service/cart.dart';
import 'package:nem_pancser/features/buy/shared/items_repository.dart';
import 'package:nem_pancser/shared/network/dio.dart';
import 'package:nem_pancser/shared/router/app_router.dart';
import 'package:nem_pancser/shared/services/pancser_client/pancser_client.dart';

void main() {
  runApp(NemPancserApp(dio: createDioInstance()));
}

class NemPancserApp extends StatelessWidget {
  NemPancserApp({super.key, required this.dio});

  final Dio dio;

  // make sure you don't initiate your router
  // inside of the build function.
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => ItemsRepository()),
        RepositoryProvider(
          create: (context) => Cart(),
          dispose: (repository) => repository.dispose(),
        ),
        RepositoryProvider(create: (context) => PancserClient(dio))
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
