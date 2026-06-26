import 'dart:ui';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nem_pancser/features/shared/router/app_router.dart';
import 'package:nem_pancser/features/shared/widgets/pancser_background.dart';
import '../shared/widgets/pancser_button.dart';

@RoutePage()
class BuyMainPage extends StatelessWidget {
  const BuyMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PancserBackground(
      content: Column(
        mainAxisSize: MainAxisSize.min, // <- fontos!
        children: [
          PancserButton(
            text: 'RENDELÉS',
            onPressed: () {
              context.router.push(const CategoryRoute());
            },
          ),
          const SizedBox(height: 20),
          PancserButton(
            text: 'PANCSER PENGŐ',
            onPressed: () {
              context.router.push(const PancserPengoRoute());
            },
          ),
        ],
      ),
    );
  }
}
