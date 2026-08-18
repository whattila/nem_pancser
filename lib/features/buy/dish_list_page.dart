import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../shared/router/app_router.dart';
import '../../shared/widgets/pancser_appbar.dart';
import '../../shared/widgets/pancser_button.dart';

@RoutePage()
class DishListPage extends StatelessWidget {
  const DishListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> dishes = [
      {
        'name': 'Akció! - Maasdamer sajt magvas',
        'price': '2895 FT',
      },
      {
        'name': 'Bundázott sajtvariáció',
        'price': '5195 FT',
      },
      {
        'name': 'Camamber almával áfonyával',
        'price': '3895 FT',
      },
      {
        'name': 'Friss kevert saláta vinegrettel',
        'price': '1855 FT',
      },
      {
        'name': 'Grillezett füstölt mozzarella, tavaszi',
        'price': '3995 FT',
      },
      {
        'name': 'Mozzarella szezámos bundában tartárral',
        'price': '3795 FT',
      },
    ];

    return Scaffold(
      appBar: pancserAppBar(context, 'KÍMÉLŐ ÉTELEK'),
      body: ListView.builder(
        itemCount: dishes.length,
        itemBuilder: (context, index) {
          final dish = dishes[index];
          final isEven = index % 2 == 0;
          return Container(
            color: isEven ? Colors.white : const Color(0xFFFFF3E0),
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    dish['name']!,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  dish['price']!,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 12),
                PancserButton(
                  onPressed: () {
                    context.router.push(const DishDetailsRoute());
                  },
                  text: 'RÉSZLETEK',
                  width: 100,
                  height: 40,
                  fontSize: 14,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
