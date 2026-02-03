import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class alarmLocationButtonWidget extends StatelessWidget {
  final String buttonText; // NEW: Receives the location name
  final VoidCallback onPressed; // NEW: Receives the click action

  const alarmLocationButtonWidget({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: SizedBox(
        width: 328,
        height: 56,
        child: ElevatedButton(
          onPressed: onPressed, // Triggers the search modal
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white.withOpacity(0.1),
            shadowColor: Colors.transparent,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(61),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end, // Content at right
            children: [
              const Icon(
                Icons.location_on_outlined,
                color: Colors.white,
                size: 24,
              ),
              const SizedBox(width: 8),
              // Expanded ensures long names don't crash the UI
              Expanded(
                child: Text(
                  buttonText, // Displays your selection
                  textAlign: TextAlign.right,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.oxygen(
                    color: Colors.white.withOpacity(0.6),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
