import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_app/common_widgets/video_player.dart';
import 'package:onboarding_app/constants/onboarding_data.dart';

class OnboardingItem extends StatelessWidget {
  final OnboardingData data;
  final int currentIndex;
  final int total;
  final VoidCallback onSkip;
  final VoidCallback onNext;

  const OnboardingItem({
    super.key,
    required this.data,
    required this.currentIndex,
    required this.total,
    required this.onSkip,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    //final bool isLast = currentIndex == total - 1;
    return Stack(
      children: [
        ListView(
          padding: const EdgeInsets.only(top: 0),
          children: [
            RepeatingVideo(videoPath: data.video),
            Container(
              margin: const EdgeInsets.only(
                top: 20,
                bottom: 40,
                left: 16,
                right: 16,
              ),
              child: Text(
                data.title,
                style: GoogleFonts.oxygen(
                  color: Colors.white,
                  fontSize: 34,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 40,
                left: 16,
                right: 16,
              ),
              child: Text(
                data.description,
                style: GoogleFonts.oxygen(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                total,
                (index) => AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                  width: currentIndex == index ? 12 : 8,
                  height: currentIndex == index ? 12 : 8,
                  decoration: BoxDecoration(
                    color: currentIndex == index
                        ? const Color.fromARGB(255, 82, 0, 255)
                        : const Color(0x33BA99FF),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
            Padding(
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
            ),
          ],
        ),
        Positioned(
          top: MediaQuery.of(context).padding.top + 10,
          right: 20,
          child: GestureDetector(
            onTap: onSkip,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: const Text(
                'Skip',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
