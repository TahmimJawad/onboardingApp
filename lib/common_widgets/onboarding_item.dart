import 'package:flutter/material.dart';
import 'package:onboarding_app/common_widgets/description.dart';
import 'package:onboarding_app/common_widgets/dot_indicator.dart';
import 'package:onboarding_app/common_widgets/next_button.dart';
import 'package:onboarding_app/common_widgets/skip_button.dart';
import 'package:onboarding_app/common_widgets/title.dart';
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
            titleWidget(titleText: data.title),
            descriptionWidget(descriptionText: data.description),
            dotIndicatorWidget(total: total, currentIndex: currentIndex),
            nextButtonWidget(onNext: onNext),
          ],
        ),
        skipButtonWidget(onSkip: onSkip),
      ],
    );
  }
}
