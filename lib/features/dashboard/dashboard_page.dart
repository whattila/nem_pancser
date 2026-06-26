import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nem_pancser/features/about/about_dialog.dart';
import 'package:nem_pancser/features/shared/router/app_router.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      resizeToAvoidBottomInset: false, //new line
      routes: const [
        BuyMainRoute(),
        ProfileDataRoute()
      ],
      appBarBuilder: (context, tabsRouter) {
        return AppBar(
          toolbarHeight: 80,
          leading: IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () => showInfoDialog(context),
            color: const Color(0xFFBD3E11),
          ),
          actions: [
            TextButton(
              onPressed: () { context.router.replaceAll([LoginRoute()]); },
              child: const Text(
                'Kijelentkezés',
                style: TextStyle(color: Color(0xFFBD3E11)),
              ),
            ),
          ],
          //TODO change to icon later
          title: Image.asset(
            "assets/images/images.jpeg",
            fit: BoxFit.contain,
            height: 70,
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
          selectedItemColor: Color(0xFFBD3E11),
        );
      },
      floatingActionButton: FloatingActionButton.extended(
        tooltip: 'Kosár',
        icon: const Icon(Icons.shopping_cart, color: Colors.white),
        onPressed: () { context.router.push(const CartRoute()); },
        label: const Text(
          'KOSÁR',
          style: TextStyle(color: Colors.white,)
        ),
        backgroundColor: const Color(0xFFBD3E11),
      ),
    );
  }
}