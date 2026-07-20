import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../shared/router/app_router.dart';
import '../../shared/widgets/pancser_appbar.dart';
import '../../shared/widgets/pancser_background.dart';
import '../../shared/widgets/pancser_button.dart';

@RoutePage()
class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      'AJÁNLATAINK',
      'KÉSZ PIZZA',
      'LEVESEK',
      'SALÁTÁK',
      'KÍMÉLŐ ÉTELEK',
      'TÉSZTASPECIALITÁSAINK',
      'A HÁZ AJÁNLATA',
      'FRISSENSÜLTEK',
    ];

    return Scaffold(
      appBar: pancserAppBar(context, 'RENDELÉS'),
      body: PancserBackground(
        content: Column(
          children: [
            const SizedBox(height: 16),
            PancserButton(
              text: 'PIZZA ÖSSZEÁLLÍTÁSA',
              onPressed: () { context.router.push(const CreatePizzaRoute()); },
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
                  separatorBuilder: (context, index) => const SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    return PancserButton(
                      text: categories[index],
                      onPressed: () { context.router.push(const CourseListRoute()); },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
