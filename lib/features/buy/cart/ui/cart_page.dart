import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nem_pancser/features/buy/cart/bloc/cart_bloc.dart';
import 'package:nem_pancser/features/buy/cart/bloc/cart_event.dart';
import 'package:nem_pancser/features/buy/cart/service/cart.dart';

import 'package:nem_pancser/features/buy/cart/bloc/cart_state.dart';
import 'package:nem_pancser/features/buy/cart/model/cart_item.dart';

import '../../../../shared/router/app_router.dart';
import '../../../../shared/widgets/pancser_button.dart';

@RoutePage()
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartBloc(context.read<Cart>())..add(const CartOpened()),
      child: const CartView(),
    );
  }
}

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'KOSÁR',
          style: TextStyle(
            color: Color(0xFFBD3E11),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: BlocSelector<CartBloc, CartState, List<CartItem>>(
              selector: (state) => (state is CartNormalState) ? state.items : [],
              builder: (context, items) {
                return ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return Container(
                      color: index % 2 == 1 ? const Color(0xFFFFF3E0) : Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.displayName,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                // TODO: here can come the details...
                              ],
                            ),
                          ),
                          const SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                item.displayPrice,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              PancserButton(
                                text: 'TÖRÖL',
                                onPressed: () {
                                  context.read<CartBloc>().add(CartItemDeleted(item: item));
                                },
                                width: 100,
                                height: 40,
                                fontSize: 14,
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SummaryRow(label: 'Felhasznált Pancser Pengők:', value: '1540 PP'),
                const SizedBox(height: 12),
                BlocSelector<CartBloc, CartState, int>(
                  selector: (state) => (state is CartNormalState) ? state.price : 0,
                  builder: (context, price) {
                    return SummaryRow(label: 'Fizetendő:', value: '$price Ft');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 80,
        color: const Color(0xFFEE834E),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            const Expanded(
              child: Text(
                'Rendelésfelvétel 11:00-21:55',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            PancserButton(
              text: 'RENDELÉS',
              onPressed: () { context.router.push(const OrderRoute()); },
              width: 140,
              height: 50,
              fontSize: 18,
            ),
          ],
        ),
      ),
    );
  }
}

class SummaryRow extends StatelessWidget {
  final String label;
  final String value;

  const SummaryRow({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Color(0xFFD35400),
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Color(0xFFD35400),
          ),
        ),
      ],
    );
  }
}
