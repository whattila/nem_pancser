import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nem_pancser/features/shared/router/app_router.dart';
import '../shared/widgets/pancser_button.dart';

@RoutePage()
class BrowseMainPage extends StatelessWidget {
  const BrowseMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PancserButton(
                text: 'PANCSER PENGŐ',
                onPressed: () { context.router.push(const PancserPengoRoute()); },
              ),
              const SizedBox(height: 20),
              PancserButton(
                text: 'RENDELÉS',
                onPressed: () { context.router.push(const CategoryRoute()); },
              ),
            ],
          ),
        ),
      );
  }
}
