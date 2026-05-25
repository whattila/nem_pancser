import 'package:flutter/material.dart';

class PancserButton extends StatelessWidget {
  final String text;
  final double? width;
  final double? height;
  final double fontSize;
  final bool enabled;
  final VoidCallback onPressed;
  final VoidCallback? onPressedDisabled;

  const PancserButton({
    super.key,
    required this.text,
    this.width = double.infinity,
    this.height = 80,
    this.fontSize = 24,
    this.enabled = true,
    required this.onPressed,
    this.onPressedDisabled,
  });

  @override
  Widget build(BuildContext context) {
    const Color baseColor = Color(0xFFBD3E11); // Deep orange color
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: enabled ? onPressed : onPressedDisabled,
        style: ElevatedButton.styleFrom(
          backgroundColor: enabled ? baseColor : baseColor.withValues(alpha: 0.5),
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
