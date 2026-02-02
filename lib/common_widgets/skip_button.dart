import 'package:flutter/material.dart';

// ignore: camel_case_types
class skipButtonWidget extends StatelessWidget {
  final VoidCallback onSkip;
  const skipButtonWidget({super.key, required this.onSkip});

  @override
  Widget build(context) {
    return Positioned(
      top: MediaQuery.of(context).padding.top + 10,
      right: 20,
      child: GestureDetector(
        onTap: onSkip,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: const Text(
            'Skip',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
