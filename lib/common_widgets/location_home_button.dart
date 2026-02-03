import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class homeButtonWidget extends StatelessWidget {
  final VoidCallback homeScreen;
  const homeButtonWidget({super.key, required this.homeScreen});

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        width: 327,
        height: 57,
        child: ElevatedButton(
          onPressed: homeScreen,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF5200FF),
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(57),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Home",
                style: GoogleFonts.oxygen(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
