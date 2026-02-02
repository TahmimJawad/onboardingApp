import 'package:flutter/material.dart';
import 'package:onboarding_app/common_widgets/onboarding_item.dart';
import 'package:onboarding_app/constants/onboarding_data.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  void onSkip() {}
  void onNext() {
    if (currentIndex < onboardingList.length - 1) {
      _pageController.nextPage(
        duration: const Duration(microseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      onSkip();
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
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
    );
  }
}
