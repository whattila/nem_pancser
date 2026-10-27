import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../shared/router/app_router.dart';
import '../../../../shared/widgets/pancser_appbar.dart';
import '../../../../shared/widgets/pancser_background.dart';
import '../../../../shared/widgets/pancser_button.dart';
import '../../cart/service/cart.dart';
import '../../repository/dish_repository.dart';
import '../bloc/create_pizza_bloc.dart';
import '../bloc/create_pizza_event.dart';
import '../bloc/create_pizza_state.dart';
import '../model/pizza_property.dart';

@RoutePage()
class CreatePizzaPage extends StatelessWidget {
  const CreatePizzaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
        CreatePizzaBloc(context.read<DishRepository>(), context.read<Cart>())
        ..add(const CreatePizzaStarted()),
      child: BlocListener<CreatePizzaBloc, CreatePizzaState>(
        listenWhen: (_, current) =>
            current is CreatePizzaInProgressState && current.confirmNoTopping
            || current is CreatePizzaDoneState,
        listener: (context, state) {
          if (state is CreatePizzaInProgressState) {
            showNoToppingConfirmDialog(context);
          } else {
            context.router.popUntilRoot();
            context.router.push(const CartRoute());
          }
        },
        child: const CreatePizzaView(),
      ),
    );
  }

  void showNoToppingConfirmDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        content: const Text(
            'Nem választottál feltétet a pizzára. Biztos így szeretnéd megrendelni?'),
        actions: [
          TextButton(
            onPressed: () {
              context.read<CreatePizzaBloc>().add(const CreatePizzaNoToppingCanceled());
              Navigator.of(dialogContext).pop();
            },
            child: const Text(
              'Nem',
              style: TextStyle(color: Color(0xFFBD3E11))
            ),
          ),
          TextButton(
            onPressed: () {
              context.read<CreatePizzaBloc>().add(const CreatePizzaFinishedNoToppingConfirmed());
              Navigator.of(dialogContext).pop();
            },
            child: const Text(
              'Igen',
              style: TextStyle(color: Color(0xFFBD3E11))
            ),
          ),
        ],
      ),
    );
  }
}

class CreatePizzaView extends StatelessWidget {
  const CreatePizzaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: pancserAppBar(context, 'Pizza összeállítása'),
      body: PancserBackground(
        content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Méret',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            BlocSelector<CreatePizzaBloc, CreatePizzaState,
                ({List<Size> sizes, Size? selectedSize})>(
              selector: (state) {
                if (state is CreatePizzaInProgressState) {
                  return (sizes: state.sizes, selectedSize: state.selectedSize);
                }
                return (sizes: const [], selectedSize: null);
              },
              builder: (context, data) {
                return RadioGroup(
                  groupValue: data.selectedSize,
                  onChanged: (Size? value) {
                    if (value != null) {
                      context.read<CreatePizzaBloc>().add(
                          CreatePizzaSelectedSizeChanged(newSize: value)
                      );
                    }
                  },
                  child: ListView(
                    shrinkWrap: true,
                    children: data.sizes
                        .map((size) => Expanded(
                          child: ListTile(
                            leading: Radio<Size>(
                              value: size,
                              activeColor: const Color(0xFFBD3E11),
                            ),
                            title: Text('${size.value} - ${size.price} Ft'),
                          ),
                        ))
                      .toList(),
                  )
                );
              },
            ),
            const SizedBox(height: 24),
            const Text(
              'Szósz',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            BlocSelector<
                CreatePizzaBloc,
                CreatePizzaState,
                ({List<Sauce> sauces, Sauce? selectedSauce})
            >(
              selector: (state) {
                if (state is CreatePizzaInProgressState) {
                  return (sauces: state.sauces, selectedSauce: state.selectedSauce);
                }
                return (sauces: const [], selectedSauce: null);
              },
              builder: (context, data) {
                return RadioGroup(
                    groupValue: data.selectedSauce,
                    onChanged: (Sauce? value) {
                      if (value != null) {
                        context.read<CreatePizzaBloc>().add(
                            CreatePizzaSelectedSauceChanged(newSauce: value)
                        );
                      }
                    },
                    child: ListView(
                      shrinkWrap: true,
                      children: data.sauces
                          .map((sauce) => Expanded(
                        child: ListTile(
                          leading: Radio<Sauce>(
                            value: sauce,
                            activeColor: const Color(0xFFBD3E11),
                          ),
                          title: Text('${sauce.value}${sauce.price != 0 ? ' - ${sauce.price} Ft' : ''}'),
                        ),
                      ))
                          .toList(),
                    )
                  );
                },
              ),
              const SizedBox(height: 24),
              const Text(
                'Feltétek',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              BlocSelector<CreatePizzaBloc, CreatePizzaState, List<Topping>>(
                selector: (state) {
                  if (state is CreatePizzaInProgressState) {
                    return state.toppings;
                  }
                  return const [];
                },
                builder: (context, toppings) {
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: toppings.length,
                    itemBuilder: (context, index) {
                      final topping = toppings[index];
                      return BlocSelector<CreatePizzaBloc, CreatePizzaState, bool>(
                        selector: (state) {
                          if (state is CreatePizzaInProgressState) {
                            return state.selectedToppings.contains(topping);
                          }
                          return false;
                        },
                        builder: (context, isSelected) {
                          return Container(
                            color: index % 2 == 1
                                ? Colors.orange.withValues(alpha: 0.1)
                                : Colors.transparent,
                            child: CheckboxListTile(
                              title: Text(topping.value),
                              subtitle: topping.price != 0 ? Text('${topping.price} Ft') : null,
                              value: isSelected,
                              onChanged: (bool? value) {
                                context.read<CreatePizzaBloc>().add(
                                  CreatePizzaToppingSelectionChanged(topping: topping),
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
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFFEE834E),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              const Text(
                'A pizza ára:',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              const Spacer(),
              BlocSelector<CreatePizzaBloc, CreatePizzaState, int>(
                selector: (state) {
                  if (state is CreatePizzaInProgressState) {
                    return state.price;
                  }
                  return 0;
                },
                builder: (context, price) {
                  return Text(
                    '$price Ft',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
              const SizedBox(width: 16),
              BlocSelector<CreatePizzaBloc, CreatePizzaState, bool>(
                selector: (state) {
                  if (state is CreatePizzaInProgressState) {
                    return state.selectedSize != null && state.selectedSauce != null;
                  }
                  return false;
                },
                builder: (context, areSizeAndSauceSelected) {
                  return PancserButton(
                    text: 'KOSÁRBA',
                    enabled: areSizeAndSauceSelected,
                    onPressed: () {
                      context.read<CreatePizzaBloc>().add(const CreatePizzaFinished());
                    },
                    onPressedDisabled: () {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Kérjük válassz méretet és alapot!')));
                    },
                    width: 120,
                    height: 40,
                    fontSize: 14,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
