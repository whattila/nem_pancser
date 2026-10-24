import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nem_pancser/features/buy/dish_details/bloc/dish_details.bloc.dart';
import 'package:nem_pancser/features/buy/dish_details/bloc/dish_details.event.dart';
import 'package:nem_pancser/features/buy/dish_details/bloc/dish_details.state.dart';
import 'package:nem_pancser/features/buy/dish_details/model/dish_accessory/dish_accessory.dart';
import 'package:nem_pancser/features/buy/dish_list/model/dish_header.dart';
import 'package:nem_pancser/features/buy/repository/dish_repository.dart';
import 'package:nem_pancser/shared/router/app_router.dart';
import 'package:nem_pancser/shared/widgets/dropdown_button_row.dart';

import '../../../shared/widgets/pancser_appbar.dart';
import '../../../shared/widgets/pancser_background.dart';
import '../../../shared/widgets/pancser_button.dart';
import '../cart/service/cart.dart';

// TODO: widget generalization
@RoutePage()
class DishDetailsPage extends StatelessWidget {
  const DishDetailsPage({super.key, required this.header});

  final DishHeader header;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DishDetailsBloc(context.read<DishRepository>(), context.read<Cart>())
        ..add(DishDetailsLoadingRequested(header: header)),
      child: BlocListener<DishDetailsBloc, DishDetailsState>(
        listenWhen: (previous, current) =>
            current is DishDetailsInProgress && current.errorMessage != null
            || current is DishDetailsDone,
        listener: (context, state) {
          if (state is DishDetailsInProgress) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.errorMessage!)),
            );
          }
          else {
            context.router.popUntilRoot();
            context.router.push(const CartRoute());
          }
        },
        child: DishDetailsView(header: header),
      ),
    );
  }
}

class DishDetailsView extends StatelessWidget {
  const DishDetailsView({super.key, required this.header});

  final DishHeader header;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: pancserAppBar(context, null),
      body: PancserBackground(
        // what builds when?
        content: BlocBuilder<DishDetailsBloc, DishDetailsState>(
          buildWhen: (previous, current)
            => !(previous is DishDetailsInProgress && current is DishDetailsInProgress),
          builder: (context, state) {
            return switch (state) {
              DishDetailsInitial() || DishDetailsLoading() => const Center(
                  child: CircularProgressIndicator(),
                ),
              DishDetailsError() => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Valami hiba történt'),
                    const SizedBox(height: 16),
                    PancserButton(
                      text: 'Újra',
                      onPressed: () {
                        context.read<DishDetailsBloc>().add(
                          DishDetailsLoadingRequested(header: header),
                        );
                      },
                    ),
                  ],
                ),
              DishDetailsDone() => const Center(
                  child: Text("Elem a kosárba helyezve"),
                ),
              DishDetailsInProgress(
                dish: final dish,
                sideDishes: final sideDishes,
                meatOptions: final meatOptions,
                saladExtras: final saladExtras
              ) => SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          dish.name.toUpperCase(),
                          style: const TextStyle(
                            color: Color(0xFFBD3E11),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),
                        // TODO: use placeholder if null!
                        if (dish.imageUrl != null) ...[
                          // TODO: CachedNetworkImage
                          Image.network(
                            dish.imageUrl!,
                            width: double.infinity,
                            height: 250,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                              Container(
                                width: double.infinity,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  border: Border.all(color: Colors.grey[300]!),
                                ),
                                child: const Icon(
                                  Icons.restaurant,
                                  size: 100,
                                  color: Colors.grey
                                ),
                              ),
                          ),
                        ],
                        const SizedBox(height: 30),
                        Text(
                          dish.description,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 18,
                            height: 1.5,
                          ),
                        ),
                        if (dish.allergens.isNotEmpty) ...[
                          const SizedBox(height: 30),
                          Text(
                            'Allergének: ${dish.allergens.join(', ')}',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                        if (sideDishes != null) ...[
                          const SizedBox(height: 30),
                          BlocSelector<DishDetailsBloc, DishDetailsState, SideDish?>(
                            selector: (state) {
                              if (state is DishDetailsInProgress) {
                                return state.selectedSideDish;
                              }
                              return null;
                            },
                            builder: (context, selectedSideDish) {
                              return DropdownButtonRow<SideDish>(
                                label: 'Köret',
                                options: sideDishes,
                                optionToString: (sideDish) => sideDish.name,
                                value: selectedSideDish,
                                onChanged: (sideDish) {
                                  context.read<DishDetailsBloc>().add(
                                    DishDetailsSelectedSideDishChanged(sideDish: sideDish),
                                  );
                                },
                              );
                            },
                          ),
                        ],
                        if (meatOptions != null) ...[
                          const SizedBox(height: 30),
                          BlocSelector<DishDetailsBloc, DishDetailsState, MeatOption?>(
                            selector: (state) {
                              if (state is DishDetailsInProgress) {
                                return state.selectedMeatOption;
                              }
                              return null;
                            },
                            builder: (context, selectedMeatOption) {
                              return DropdownButtonRow<MeatOption>(
                                label: 'Húsféle',
                                options: meatOptions,
                                optionToString: (meatOption) => meatOption.name,
                                value: selectedMeatOption,
                                onChanged: (meatOption) {
                                  context.read<DishDetailsBloc>().add(
                                    DishDetailsSelectedMeatOptionChanged(meatOption: meatOption),
                                  );
                                },
                              );
                            },
                          ),
                        ],
                        if (saladExtras != null) ...[
                          const SizedBox(height: 30),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: saladExtras.length,
                            itemBuilder: (context, index) {
                              final saladExtra = saladExtras[index];
                              return BlocSelector<DishDetailsBloc, DishDetailsState, bool>(
                                selector: (state) {
                                  if (state is DishDetailsInProgress) {
                                    return state.saladExtras!.contains(saladExtra);
                                  }
                                  return false;
                                },
                                builder: (context, isSelected) {
                                  return Container(
                                    color: index % 2 == 1 ?
                                          Colors.orange.withValues(alpha: 0.1)
                                        : Colors.transparent,
                                    child: CheckboxListTile(
                                      title: Text(saladExtra.name),
                                      subtitle: saladExtra.price != 0 ?
                                            Text('${saladExtra.price} Ft')
                                          : null,
                                      value: isSelected,
                                      onChanged: (bool? value) {
                                        context.read<DishDetailsBloc>().add(
                                          DishDetailsSaladExtraSelectionChanged(saladExtra: saladExtra),
                                        );
                                      },
                                      activeColor: const Color(0xFFBD3E11),
                                      side: const BorderSide(
                                      color: Color(0xFFBD3E11),
                                      width: 2
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          )
                        ]
                      ],
                    ),
                )
            };
          },
        ),
      ),
      bottomNavigationBar: BlocBuilder<DishDetailsBloc, DishDetailsState>(
        buildWhen: (previous, current)
          => !(previous is DishDetailsInProgress && current is DishDetailsInProgress),
        builder: (context, state) {
          if (state is! DishDetailsInProgress) {
            return const SizedBox.shrink();
          }

          return BottomAppBar(
            height: 80,
            color: const Color(0xFFEE834E),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                PancserButton(
                  text: '+',
                  onPressed: () {
                    context.read<DishDetailsBloc>().add(DishDetailsAmountIncreased());
                  },
                  width: 50,
                  height: 50,
                  fontSize: 24,
                ),
                const SizedBox(width: 10),
                PancserButton(
                  text: '-',
                  onPressed: () {
                    context.read<DishDetailsBloc>().add(DishDetailsAmountDecreased());
                  },
                  width: 50,
                  height: 50,
                  fontSize: 24,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BlocSelector<DishDetailsBloc, DishDetailsState, int>(
                        selector: (state) => state is DishDetailsInProgress ? state.amount : 1,
                        builder: (context, amount) {
                          return Text(
                            '$amount db  ',
                            style: const TextStyle(color: Colors.white, fontSize: 18),
                          );
                        },
                      ),
                      BlocSelector<DishDetailsBloc, DishDetailsState, int>(
                        selector: (state) => state is DishDetailsInProgress ? state.price : 0,
                        builder: (context, price) {
                          return Text(
                            '$price FT',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                BlocSelector<DishDetailsBloc, DishDetailsState, bool>(
                  selector: (state) =>
                    state is DishDetailsInProgress ?
                        state.isEverythingSelected
                      : false,
                  builder: (context, isEverythingSelected) {
                    return PancserButton(
                      text: 'KOSÁRBA',
                      onPressed: () {
                        context.read<DishDetailsBloc>().add(DishDetailsFinished());
                      },
                      width: 120,
                      height: 50,
                      fontSize: 16,
                      enabled: isEverythingSelected,
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
