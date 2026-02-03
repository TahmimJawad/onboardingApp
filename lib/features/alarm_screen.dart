import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_app/constants/background_color.dart';

class alarmScreen extends StatelessWidget {
  final String? selectedLocation;

  alarmScreen({super.key, required this.selectedLocation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundGradientColor(
            child: Center(
                child: Container(
      margin: const EdgeInsets.only(
        top: 20,
        bottom: 40,
        left: 16,
        right: 16,
      ),
      child: Text(
        selectedLocation ?? "Select Location",
        style: GoogleFonts.oxygen(
          color: Colors.white,
          fontSize: 34,
        ),
      ),
    ))));
  }
}
