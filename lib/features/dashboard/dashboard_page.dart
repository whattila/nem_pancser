import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nem_pancser/features/about/about_dialog.dart';
import 'package:nem_pancser/features/shared/router/app_router.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AutoTabsScaffold(
          resizeToAvoidBottomInset: false, //new line
          routes: const [
            BrowseMainRoute(),
            ProfileDataRoute()
          ],
          appBarBuilder: (context, tabsRouter) {
            return AppBar(
              leading: IconButton(
                icon: const Icon(Icons.info_outline),
                onPressed: () => showInfoDialog(context),
              ),
              actions: [
                TextButton(
                  onPressed: () { context.router.replaceAll([LoginRoute()]); },
                  child: const Text(
                    'Kijelentkezés',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
              //TODO change to icon later
              title: const Text(
                "Nem Pancser Pizzéria",
              ),
            );
          },
          bottomNavigationBuilder: (context, tabsRouter) {
            return BottomNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              onTap: (int index) {
                tabsRouter.setActiveIndex(index);
              },
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(label: 'Rendelés', icon: Icon(Icons.local_pizza)),
                BottomNavigationBarItem(label: 'Profilod', icon: Icon(Icons.person))
              ],
            );
          },
          floatingActionButton: FloatingActionButton.extended(
              tooltip: 'Kosár',
              onPressed: () { context.router.push(const CartRoute()); },
              label: const Text('Kosár')
          ),
        ),
      ],
    );
  }
}