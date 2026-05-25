import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nem_pancser/features/shared/router/app_router.dart';

import '../../../shared/widgets/pancser_button.dart';

@RoutePage()
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> cartItems = [
      {
        'name': '1x Abásfalvi babgulyás',
        'price': '2155 FT',
        'description': '650 ml. kockázott borjúhúst, sertés csülköt és pirított kolbászkarikákat zöldségekkel, babbal összefőzve, tejf...',
        'isPP': false,
      },
      {
        'name': '1x LEGO Gyűjthető F1-es versenyautók 71049',
        'price': '1190 PP',
        'description': '',
        'isPP': true,
      },
      {
        'name': '1x Pepsi 1 L',
        'price': '350 PP',
        'description': '',
        'isPP': true,
      },
      {
        'name': '1x Négysajtos Pizza 32 cm',
        'price': '4595 FT',
        'description': 'paradicsomszósz, mozzarella, füstölt, márvány, trappista',
        'isPP': false,
      },
    ];

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
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
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
                              item['name'],
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            if (item['description'].isNotEmpty)
                              Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Text(
                                  item['description'],
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.black54,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            item['price'],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          PancserButton(
                            text: 'TÖRÖL',
                            onPressed: () {},
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
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                SummaryRow(label: 'Felhasznált Pancser Pengők:', value: '1540 PP'),
                SizedBox(height: 12),
                SummaryRow(label: 'Fizetendő:', value: '6750 FT'),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 80,
        color: const Color(0xFFBD3E11),
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
