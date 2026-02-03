import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class locationDescriptionWidget extends StatelessWidget {
  const locationDescriptionWidget({super.key});

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 100,
        left: 16,
        right: 16,
      ),
      child: Text(
        'Stay on schedule and enjoy every moment of your journey.',
        textAlign: TextAlign.center,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: GoogleFonts.oxygen(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
