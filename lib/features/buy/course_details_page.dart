import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nem_pancser/features/shared/widgets/pancser_appbar.dart';
import '../shared/widgets/pancser_button.dart';

@RoutePage()
class CourseDetailsPage extends StatelessWidget {
  const CourseDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: pancserAppBar(context, null),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'ABÁSFALVI BABGULYÁS',
                style: TextStyle(
                  color: Color(0xFFBD3E11),
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              // Placeholder for the food image
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.grey[300]!),
                ),
                child: const Icon(Icons.restaurant, size: 100, color: Colors.grey),
              ),
              const SizedBox(height: 30),
              const Text(
                '650 ml. kockázott borjúhúst, sertés csülköt és pirított kolbászkarikákat zöldségekkel, babbal összefőzve, tejföllel tálaljuk',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Allergén: glutént tartalmazó gabonafélék, tej, zeller, mustármag',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 80,
        color: const Color(0xFFEE834E),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            PancserButton(
              text: '+',
              onPressed: () {},
              width: 50,
              height: 50,
              fontSize: 24,
            ),
            const SizedBox(width: 10),
            PancserButton(
              text: '-',
              onPressed: () {},
              width: 50,
              height: 50,
              fontSize: 24,
            ),
            const Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '1 db  ',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    '2155 FT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            PancserButton(
              text: 'KOSÁRBA',
              onPressed: () { ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Tétel kosárba helyezve'))); },
              width: 120,
              height: 50,
              fontSize: 16,
            ),
          ],
        ),
      ),
    );
  }
}
