import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../shared/widgets/pancser_button.dart';

@RoutePage()
class CreatePizzaPage extends StatefulWidget {
  const CreatePizzaPage({super.key});

  @override
  State<CreatePizzaPage> createState() => _CreatePizzaPageState();
}

class _CreatePizzaPageState extends State<CreatePizzaPage> {
  final Map<String, bool> _toppings = {
    'SAJT NÉLKÜL KÉREM': false,
    'Mozzarella sajt': true,
    'Sonka': false,
    'Szalámi': false,
    'Szalonna': false,
    'Ananász': false,
    'Hagyma': false,
    'Kukorica': false,
    'Borsó': false,
    'Gomba': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pizza összeállítása'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'méret',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: PancserButton(
                      text: '26 cm',
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: PancserButton(
                      text: '32 cm',
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: PancserButton(
                      text: '45 cm',
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text(
                'szósz',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              PancserButton(
                text: 'Paradicsomszósz',
                onPressed: () {},
              ),
              const SizedBox(height: 12),
              PancserButton(
                text: 'Fokhagymás-tejfölös alap',
                onPressed: () {},
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0),
                child: Divider(thickness: 2),
              ),
              const Text(
                '2. lépés - feltétek kiválasztása',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _toppings.length,
                itemBuilder: (context, index) {
                  String key = _toppings.keys.elementAt(index);
                  return Container(
                    color: index % 2 == 1 ? Colors.orange.withOpacity(0.1) : Colors.transparent,
                    child: CheckboxListTile(
                      title: Text(key),
                      value: _toppings[key],
                      onChanged: (bool? value) {
                        setState(() {
                          _toppings[key] = value ?? false;
                        });
                      },
                      activeColor: const Color(0xFFBD3E11),
                      side: const BorderSide(color: Color(0xFFBD3E11), width: 2),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFFBD3E11),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              const Text(
                'A pizza ára:',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              const Spacer(),
              const Text(
                '3795 FT',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 16),
              PancserButton(
                text: 'KOSÁRBA',
                onPressed: () { ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Tétel kosárba helyezve'))); },
                width: 120,
                height: 40,
                fontSize: 14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
