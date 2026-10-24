import 'package:flutter/material.dart';

// TODO: redo this the generailzed way AI suggested
class DropdownButtonRow<T> extends StatelessWidget {
  final String label;
  final List<T> options;
  final String Function(T) optionToString;
  final void Function(T?)? onChanged;
  final String validationMessage;
  final T? value;

  const DropdownButtonRow({
    super.key,
    required this.label,
    required this.options,
    required this.optionToString,
    required this.value,
    this.onChanged,
    this.validationMessage = 'Kérjük válassz!',
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
          child: DropdownButtonFormField<T>(
            initialValue: value,
            items: options.map((T val) {
              return DropdownMenuItem<T>(
                value: val,
                child: Text(optionToString(val)),
              );
            }).toList(),
            onChanged: onChanged,
            validator: (val) {
              if (val == null) {
                return validationMessage;
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