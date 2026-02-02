class OnboardingData {
  final String video;
  final String title;
  final String description;

  OnboardingData({
    required this.video,
    required this.title,
    required this.description,
  });
}

final List<OnboardingData> onboardingList = [
  OnboardingData(
      video: 'assets/videos/video01.mp4',
      title: 'Discover the world, one journey at a time.',
      description:
          'From hidden gems to iconic destinations, we make travel simple, inspiring, and unforgettable. Start your next adventure today.'),
  OnboardingData(
      video: 'assets/videos/video02.mp4',
      title: 'Explore new horizons, one step at a time.',
      description:
          'Every trip holds a story waiting to be lived. Let us guide you to experiences that inspire, connect, and last a lifetime.'),
  OnboardingData(
      video: 'assets/videos/video03.mp4',
      title: 'See the beauty, one journey at a time.',
      description:
          'Travel made simple and exciting—discover places you’ll love and moments you’ll never forget.'),
];
