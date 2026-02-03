import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_app/constants/background_color.dart';

class alarmScreen extends StatelessWidget {
  final String? selectedLocation;
  final double? lat;
  final double? long;

  alarmScreen({
    super.key,
    required this.selectedLocation,
    required this.lat,
    required this.long,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundGradientColor(
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 80,
                  bottom: 20,
                  left: 16,
                  right: 16,
                ),
                child: Text(
                  selectedLocation ?? "Select Location",
                  style: GoogleFonts.oxygen(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 80,
                  bottom: 20,
                  left: 16,
                  right: 16,
                ),
                child: Text(
                  "Alarms",
                  style: GoogleFonts.oxygen(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
