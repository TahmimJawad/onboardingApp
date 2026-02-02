import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class nextButtonWidget extends StatelessWidget {
  final VoidCallback onNext;
  const nextButtonWidget({super.key, required this.onNext});

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 20,
      ),
      child: ElevatedButton(
        onPressed: onNext,
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(328, 56),
          backgroundColor: const Color(0xFF5200FF), // Your purple color
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(69), // Higher number = more curve
          ),
        ),
        child: Text(
          'NEXT',
          textAlign: TextAlign.center,
          style: GoogleFonts.oxygen(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w700,
              height: 1.0,
              letterSpacing: 0.0),
        ),
      ),
    );
  }
}
