import 'package:flutter/material.dart';
import 'package:onboarding_app/features/onboarding_screen.dart';

class BackgroundGradientColor extends StatelessWidget {
  const BackgroundGradientColor({super.key});

  @override
  Widget build(context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 11, 0, 36),
            Color.fromARGB(255, 8, 34, 87),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: const OnboardingPage());
  }
}
