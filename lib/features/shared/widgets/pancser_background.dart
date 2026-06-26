import 'dart:ui';

import 'package:flutter/material.dart';

class PancserBackground extends StatelessWidget {
  final Widget content;

  const PancserBackground({
    super.key,
    required this.content
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            "assets/images/pizza-shutterstock.jpg",
            fit: BoxFit.cover,
          ),
        ),

        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 2,
              sigmaY: 2,
            ),
            child: Container(
              color: Colors.white.withValues(alpha: 0.25),
            ),
          ),
        ),

        SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 20
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 40,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 12,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: content,
              ),
            ),
          ),
        ),
      ],
    );
  }
}