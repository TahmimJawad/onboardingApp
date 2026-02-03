import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class locationTitleWidget extends StatelessWidget {
  const locationTitleWidget({super.key});

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 80,
        bottom: 20,
        left: 16,
        right: 16,
      ),
      child: Text(
        'Welcome! Your Smart Travel Alarm',
        textAlign: TextAlign.center,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: GoogleFonts.oxygen(
          color: Colors.white,
          fontSize: 34,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
