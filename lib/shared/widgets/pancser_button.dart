import 'package:flutter/material.dart';

class PancserButton extends StatelessWidget {
  final String text;
  final double? width;
  final double? height;
  final double fontSize;
  final Color backgroundColor;
  final bool enabled;
  final VoidCallback onPressed;
  final VoidCallback? onPressedDisabled;

  const PancserButton({
    super.key,
    required this.text,
    this.width = double.infinity,
    this.height = 80,
    this.fontSize = 24,
    this.backgroundColor = const Color(0xFFBD3E11),
    this.enabled = true,
    required this.onPressed,
    this.onPressedDisabled,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: enabled ? onPressed : onPressedDisabled,
        style: ElevatedButton.styleFrom(
          backgroundColor: enabled ? backgroundColor : Colors.grey,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          padding: EdgeInsets.zero,
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
      ),
    );
  }
}
