import 'package:flutter/material.dart';
import 'package:onboarding_app/features/alarm_screen.dart';

class HomeNavigationService {
  static void goToAlarm(BuildContext context, String location) {
    if (!context.mounted) return;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => alarmScreen(
          selectedLocation: location,
        ),
      ),
    );
  }
}
