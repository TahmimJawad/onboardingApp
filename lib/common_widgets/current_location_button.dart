import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class locationButtonWidget extends StatelessWidget {
  final VoidCallback getCurrentLocation;
  const locationButtonWidget({
    super.key,
    required this.getCurrentLocation,
  });

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: SizedBox(
        width: 327,
        height: 57,
        child: ElevatedButton(
          onPressed: () {
            getCurrentLocation();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
            side: const BorderSide(color: Colors.grey, width: 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(57),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Use Current Location',
                style: GoogleFonts.oxygen(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(width: 8),
              const Icon(
                Icons.location_on_outlined,
                color: Colors.white,
                size: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
