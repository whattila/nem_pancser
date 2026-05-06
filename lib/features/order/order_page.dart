import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../shared/widgets/pancser_button.dart';

@RoutePage()
class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Rendelés',
          style: TextStyle(
            color: Color(0xFFBD3E11),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'RENDELÉSI ADATOK',
                style: TextStyle(
                  color: Color(0xFFBD3E11),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              InputRow(label: 'Név: *', initialValue: 'Hidán Attila'),
              SizedBox(height: 12),
              SelectRow(label: 'Város: *', value: '2120 Dunakeszi'),
              SizedBox(height: 12),
              SelectRow(label: 'Utca: *', value: '- nincs kiválasztva -'),
              SizedBox(height: 12),
              InputRow(label: 'Házszám: *', initialValue: '19'),
              SizedBox(height: 12),
              InputRow(label: 'Lépcsőház:', initialValue: ''),
              SizedBox(height: 12),
              InputRow(label: 'Emelet:', initialValue: ''),
              SizedBox(height: 12),
              InputRow(label: 'Ajtó:', initialValue: ''),
              SizedBox(height: 12),
              InputRow(label: 'Kapucsengő:', initialValue: ''),
              SizedBox(height: 12),
              InputRow(label: 'Telefonszám: *', initialValue: '06309846500'),
              SizedBox(height: 12),
              InputRow(label: 'E-mail cím: *', initialValue: 'ahhidati070@gmail.com'),
              SizedBox(height: 12),
              InputRow(label: 'Megjegyzés:', initialValue: ''),
              SizedBox(height: 12),
              SelectRow(label: 'Fizetés: *', value: '-'),
              SizedBox(height: 12),
              SelectRow(label: 'Szállítás: *', value: 'Házhozszállítás'),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 80,
        color: const Color(0xFFBD3E11),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: PancserButton(
          text: 'MEGRENDELÉS',
          onPressed: () { ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Megrendelés leadva'))); },
          height: 60,
          fontSize: 20,
        ),
      ),
    );
  }
}

class InputRow extends StatelessWidget {
  final String label;
  final String initialValue;

  const InputRow({
    super.key,
    required this.label,
    required this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 120,
          child: Text(
            label,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
        Expanded(
          child: TextField(
            controller: TextEditingController(text: initialValue),
            decoration: const InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}

class SelectRow extends StatelessWidget {
  final String label;
  final String value;

  const SelectRow({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 120,
          child: Text(
            label,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(width: 10),
        PancserButton(
          text: 'Válassz...',
          onPressed: () {},
          width: 100,
          height: 40,
          fontSize: 14,
        ),
      ],
    );
  }
}
