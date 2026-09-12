import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nem_pancser/features/authentication/shared/auth.repository.dart';
import 'package:nem_pancser/shared/services/user_access_data_storage/user_access_data_storage.dart';
import 'package:nem_pancser/features/buy/cart/service/cart.dart';
import 'package:nem_pancser/features/buy/shared/dish_repository.dart';
import 'package:nem_pancser/shared/network/dio.dart';
import 'package:nem_pancser/shared/router/app_router.dart';
import 'package:nem_pancser/shared/services/pancser_client/pancser_client.dart';

void main() {
  final userAccessDataStorage = UserAccessDataStorage();
  runApp(
      NemPancserApp(
        storage: userAccessDataStorage,
        pancserClient: PancserClient(
            createDioInstance(userAccessDataStorage: userAccessDataStorage)
      ),
    )
  );
}

class NemPancserApp extends StatelessWidget {
  NemPancserApp({
    super.key,
    required this.storage,
    required this.pancserClient
  });

  final UserAccessDataStorage storage;
  final PancserClient pancserClient;

  // make sure you don't initiate your router
  // inside of the build function.
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: pancserClient),
        RepositoryProvider(create: (context) => DishRepository()),
        RepositoryProvider(
          create: (context) => Cart(),
          dispose: (repository) => repository.dispose(),
        ),
        RepositoryProvider(
          create: (context) => AuthRepository(
            pancserClient: pancserClient,
            userAccessDataStorage: storage,
          ),
        ),
      ],
      child: MaterialApp.router(
        title: 'Nem Pancser',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
