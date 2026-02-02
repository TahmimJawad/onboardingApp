import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class titleWidget extends StatelessWidget {
  final String titleText;
  const titleWidget({super.key, required this.titleText});

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
        bottom: 40,
        left: 16,
        right: 16,
      ),
      child: Text(
        titleText,
        style: GoogleFonts.oxygen(
          color: Colors.white,
          fontSize: 34,
        ),
      ),
    );
  }
}
