import 'package:flutter/material.dart';
import 'package:onboarding_app/constants/background_color.dart';

void main() {
  runApp(const OnboardingApp());
}

class OnboardingApp extends StatelessWidget {
  const OnboardingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: BackgroundGradientColor()),
    );
  }
}
