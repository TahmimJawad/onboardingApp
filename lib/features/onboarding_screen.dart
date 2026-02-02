import 'package:flutter/material.dart';
import 'package:onboarding_app/common_widgets/onboarding_item.dart';
import 'package:onboarding_app/constants/background_color.dart';
import 'package:onboarding_app/constants/onboarding_data.dart';
import 'package:onboarding_app/features/location_screen.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  void onSkip() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const locationScreen()),
    );
  }

  void onNext() {
    if (currentIndex < onboardingList.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // CHANGE ROUTE HERE
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const locationScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundGradientColor(
      child: PageView.builder(
        controller: _pageController,
        itemCount: onboardingList.length,
        onPageChanged: (index) {
          setState(
            () {
              currentIndex = index;
            },
          );
        },
        itemBuilder: (context, index) {
          return OnboardingItem(
            data: onboardingList[index],
            currentIndex: currentIndex,
            total: onboardingList.length,
            onSkip: onSkip,
            onNext: onNext,
          );
        },
      ),
    );
  }
}
