import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../shared/widgets/pancser_button.dart';

@RoutePage()
class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final _formKey = GlobalKey<FormState>();

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
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Text(
                  'RENDELÉSI ADATOK',
                  style: TextStyle(
                    color: Color(0xFFBD3E11),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                InputRow(
                  label: 'Név: *',
                  initialValue: 'Hidán Attila',
                  validator: (value) => (value == null || value.isEmpty)
                      ? 'Kérjük add meg a neved!'
                      : null,
                ),
                const SizedBox(height: 12),
                const SelectRow(
                  label: 'Város: *',
                  options: ['2120 Dunakeszi', '2121 Fót', '2131 Göd'],
                ),
                const SizedBox(height: 12),
                InputRow(
                  label: 'Utca: *',
                  initialValue: 'Kazinczy utca',
                  validator: (value) => (value == null || value.isEmpty)
                      ? 'Kérjük add meg az utcát!'
                      : null,
                ),
                const SizedBox(height: 12),
                InputRow(
                  label: 'Házszám: *',
                  initialValue: '19',
                  validator: (value) => (value == null || value.isEmpty)
                      ? 'Kérjük add meg a házszámot!'
                      : null,
                ),
                const SizedBox(height: 12),
                const InputRow(label: 'Lépcsőház:'),
                const SizedBox(height: 12),
                const InputRow(label: 'Emelet:'),
                const SizedBox(height: 12),
                const InputRow(label: 'Ajtó:'),
                const SizedBox(height: 12),
                const InputRow(label: 'Kapucsengő:'),
                const SizedBox(height: 12),
                InputRow(
                  label: 'Telefonszám: *',
                  initialValue: '06309846500',
                  keyboardType: TextInputType.phone,
                  validator: (value) => (value == null || value.isEmpty)
                      ? 'Kérjük add meg a telefonszámod!'
                      : null,
                ),
                const SizedBox(height: 12),
                InputRow(
                  label: 'E-mail cím: *',
                  initialValue: 'ahhidati070@gmail.com',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Kérjük add meg az e-mail címed!';
                    }
                    else if (!RegExp(r'^.+@.+\..+$').hasMatch(value)) {
                      return 'Érvénytelen e-mail formátum!';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),
                const InputRow(label: 'Megjegyzés:'),
                const SizedBox(height: 12),
                const SelectRow(
                  label: 'Fizetés: *',
                  options: ['Készpénz', 'Bankkártya'],
                ),
                const SizedBox(height: 12),
                const SelectRow(
                  label: 'Szállítás: *',
                  options: ['Házhozszállítás', 'Személyes átvétel'],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 80,
        color: const Color(0xFFEE834E),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: PancserButton(
          text: 'MEGRENDELÉS',
          onPressed: () {
            if (_formKey.currentState?.validate() ?? false) {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Megrendelés leadva')));
              context.router.popUntilRoot();
            }
          },
          height: 60,
          fontSize: 20,
        ),
      ),
    );
  }
}

class InputRow extends StatelessWidget {
  final String label;
  final String? initialValue;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;

  const InputRow({
    super.key,
    required this.label,
    this.initialValue,
    this.validator,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 120,
          child: Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Text(
              label,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Expanded(
          child: TextFormField(
            initialValue: initialValue,
            validator: validator,
            keyboardType: keyboardType,
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
  static const String unsetValue = "- nincs kiválasztva -";

  final String label;
  final List<String> options;

  const SelectRow({
    super.key,
    required this.label,
    required this.options,
  });

  @override
  Widget build(BuildContext context) {
    final allOptions = [
      unsetValue,
      ...options
    ];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 120,
          child: Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Text(
              label,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Expanded(
          child: DropdownButtonFormField<String>(
            initialValue: unsetValue,
            items: allOptions.map((String val) {
              return DropdownMenuItem<String>(
                value: val,
                child: Text(val),
              );
            }).toList(),
            onChanged: (val) {},
            validator: (val) {
              if (val == null || val == unsetValue) {
                return 'Kérjük válassz!';
              }
              return null;
            },
            decoration: const InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            ),
          ),
        ),
      ],
    );
  }
}
