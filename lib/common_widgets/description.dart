import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class descriptionWidget extends StatelessWidget {
  final String descriptionText;
  const descriptionWidget({super.key, required this.descriptionText});

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 40,
        left: 16,
        right: 16,
      ),
      child: Text(
        descriptionText,
        style: GoogleFonts.oxygen(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
    );
  }
}
