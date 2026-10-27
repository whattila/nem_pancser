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
          width: 90,
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
            isExpanded: true,
            initialValue: value,
            items: options.map((T value) {
              return DropdownMenuItem<T>(
                value: value,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text(optionToString(value), softWrap: true),
                ),
              );
            }).toList(),
            selectedItemBuilder: (context) => options.map((value) {
              return Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  optionToString(value),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
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