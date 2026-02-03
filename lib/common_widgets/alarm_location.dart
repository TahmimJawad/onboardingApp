import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class alarmLocationTitleWidget extends StatelessWidget {
  final String alarmLocationTitle;
  const alarmLocationTitleWidget({super.key, required this.alarmLocationTitle});

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
        bottom: 10,
        left: 16,
        right: 16,
      ),
      child: Text(
        alarmLocationTitle,
        textAlign: TextAlign.left,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: GoogleFonts.oxygen(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
