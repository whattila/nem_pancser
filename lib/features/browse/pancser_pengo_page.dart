import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../shared/widgets/pancser_button.dart';

@RoutePage()
class PancserPengoPage extends StatelessWidget {
  const PancserPengoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> items = [
      {
        'name': 'LEGO Audi Revolut F1 Team R26 77259',
        'description': 'A 10 éves vagy nagyobb fiúk és lányok megszerezhetik, megépíthetik,',
        'price': '7500',
      },
      {
        'name': 'LEGO Gyűjthető F1-es versenyautók 71049',
        'description': 'A mini LEGO F1 autók titokcsomagokban érkeznek, hogy összegyűjtsd, kiállítsd',
        'price': '1190',
      },
      {
        'name': 'Pepsi 1 L',
        'description': '',
        'price': '350',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PANCSER PENGŐ',
          style: TextStyle(
            color: Color(0xFFD35400),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            const Text(
              'Egyenleged: 7754',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFFD35400),
              ),
            ),
            const SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Text(
                                item['name']!,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    item['price']!,
                                    style: const TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFD35400),
                                    ),
                                  ),
                                  const Text(
                                    'PANCSER PENGŐ',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFD35400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                item['description']!,
                                style: const TextStyle(fontSize: 14),
                              ),
                            ),
                            const SizedBox(width: 10),
                            PancserButton(
                              text: 'MEGVESZEM',
                              onPressed: () { ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Tétel kosárba helyezve'))); },
                              width: 140,
                              height: 50,
                              fontSize: 16,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 180,
        padding: EdgeInsets.zero,
        color: const Color(0xFFBD3E11),
        child: Container(
          padding: const EdgeInsets.all(20),
          color: const Color(0xFFEE834E),
          child: const Text(
            'Minden Ételrendelésed után virtuális Pengőt írunk jóvá személyes Pancser Pengő számládon az étel adatlapján meghatározott mennyiségben. Az oldalra történő belépésed után beválthatsz az összegyűjtött Pancser Pengőid-ből ajándékokat.\nRendelj, és élvezd gyümölcsét, keresd a Pancser Pengő ételkategóriát, ahol Pengőidért ingyen vásárolhatsz termékeket.\nA megrendelt Pancser Pengő terméket rendelt ételeddel szállítjuk ki.',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
        ),
      ),
    );
  }
}
