import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nem_pancser/features/buy/category/model/dish_category.dart';
import 'package:nem_pancser/features/buy/dish_list/bloc/dish_list.bloc.dart';
import 'package:nem_pancser/features/buy/dish_list/bloc/dish_list.event.dart';
import 'package:nem_pancser/features/buy/dish_list/bloc/dish_list.state.dart';
import 'package:nem_pancser/features/buy/repository/dish_repository.dart';

import '../../../shared/router/app_router.dart';
import '../../../shared/widgets/pancser_appbar.dart';
import '../../../shared/widgets/pancser_background.dart';
import '../../../shared/widgets/pancser_button.dart';

@RoutePage()
class DishListPage extends StatelessWidget {
  const DishListPage({super.key, required this.category});

  final DishCategory category;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DishListBloc(context.read<DishRepository>())
        ..add(DishListEvent.loadingRequested(category: category)),
      child: Scaffold(
        appBar: pancserAppBar(context, category.name.toUpperCase()),
        body: PancserBackground(
          content: BlocBuilder<DishListBloc, DishListState>(
            builder: (context, state) {
              return switch (state) {
                DishListInitial() || DishListLoading() => const Center(
                    child: CircularProgressIndicator(),
                  ),
                DishListError() => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Valami hiba történt'),
                      const SizedBox(height: 16),
                      PancserButton(
                        text: 'Újra',
                        onPressed: () {
                          context.read<DishListBloc>().add(
                                DishListEvent.loadingRequested(
                                    category: category),
                              );
                        },
                      ),
                    ],
                  ),
                DishListSuccess(dishes: final dishes) => Scrollbar(
                    thumbVisibility: true,
                    child: ListView.builder(
                      itemCount: dishes.length,
                      itemBuilder: (context, index) {
                        final dish = dishes[index];
                        final isEven = index % 2 == 0;
                        return Container(
                          color: isEven ? Colors.white : const Color(0xFFFFF3E0),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 12.0
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  dish.name,
                                  style: const TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                '${dish.price} FT',
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(width: 12),
                              PancserButton(
                                onPressed: () {
                                  context.router.push(DishDetailsRoute(header: dish));
                                },
                                text: 'RÉSZLETEK',
                                width: 75,
                                height: 30,
                                fontSize: 10,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
              };
            },
          ),
        ),
      ),
    );
  }
}
