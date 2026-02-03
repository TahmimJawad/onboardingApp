import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_app/constants/background_color.dart';

// ignore: camel_case_types
class locationScreen extends StatelessWidget {
  const locationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundGradientColor(
        child: Column(
          children: [
            Container(
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
            ),
            Container(
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
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/location.jpg',
                width: 305,
                height: 215,
                fit: BoxFit.cover,
              ),
            ),
            //nhkjhj
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: SizedBox(
                width: 327,
                height: 57,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.transparent, // Transparent background
                    shadowColor: Colors.transparent,
                    elevation: 0,
                    side: const BorderSide(
                        color: Colors.grey, width: 1), // The border
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(57), // Rounded corners
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12), // Add padding
                  ),
                  child: Row(
                    // mainAxisSize: MainAxisSize.min makes the button wrap its content snugly
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Use Current Location",
                        style: GoogleFonts.oxygen(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                          width: 8), // Add some space between text and icon
                      const Icon(
                        Icons.location_on_outlined, // The location icon
                        color: Colors.white,
                        size: 24,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                width: 327,
                height: 57,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF5200FF),
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(57),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                  ),
                  child: Row(
                    // mainAxisSize: MainAxisSize.min makes the button wrap its content snugly
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
            )
          ],
        ),
      ),
    );
  }
}
