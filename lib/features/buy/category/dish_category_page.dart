import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nem_pancser/features/buy/category/bloc/dish_category.bloc.dart';
import 'package:nem_pancser/features/buy/category/bloc/dish_category.event.dart';
import 'package:nem_pancser/features/buy/category/bloc/dish_category.state.dart';
import 'package:nem_pancser/shared/services/pancser_client/pancser_client.dart';

import '../../../shared/router/app_router.dart';
import '../../../shared/widgets/pancser_appbar.dart';
import '../../../shared/widgets/pancser_background.dart';
import '../../../shared/widgets/pancser_button.dart';

@RoutePage()
class DishCategoryPage extends StatelessWidget {
  const DishCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DishCategoryBloc(context.read<PancserClient>())
        ..add(const DishCategoryLoadingRequested()),
      child: Scaffold(
        appBar: pancserAppBar(context, 'RENDELÉS'),
        body: PancserBackground(
          content: BlocBuilder<DishCategoryBloc, DishCategoryState>(
            builder: (context, state) {
              return switch (state) {
                DishCategoryInitial() || DishCategoryLoading() => const Center(
                    child: CircularProgressIndicator(),
                  ),
                DishCategoryError() => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Valami hiba történt'),
                      const SizedBox(height: 16),
                      PancserButton(
                        text: 'Újra',
                        onPressed: () {
                          context.read<DishCategoryBloc>().add(
                                const DishCategoryLoadingRequested(),
                              );
                        },
                      ),
                    ],
                  ),
                DishCategorySuccess(categories: final categories) => Column(
                    children: [
                      const SizedBox(height: 16),
                      PancserButton(
                        text: 'PIZZA ÖSSZEÁLLÍTÁSA',
                        onPressed: () {
                          context.router.push(const CreatePizzaRoute());
                        },
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: Divider(thickness: 2),
                      ),
                      Expanded(
                        child: Scrollbar(
                          thumbVisibility: true,
                          child: ListView.separated(
                            padding: const EdgeInsets.only(bottom: 20),
                            itemCount: categories.length,
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: 12),
                            itemBuilder: (context, index) {
                              final category = categories[index];
                              return PancserButton(
                                text: category.name.toUpperCase(),
                                onPressed: () {
                                  context.router
                                      .push(DishListRoute(category: category));
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
              };
            },
          ),
        ),
      ),
    );
  }
}
