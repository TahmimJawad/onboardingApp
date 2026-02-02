import 'package:flutter/material.dart';

// ignore: camel_case_types
class dotIndicatorWidget extends StatelessWidget {
  final int total;
  final int currentIndex;
  const dotIndicatorWidget(
      {super.key, required this.total, required this.currentIndex});

  @override
  Widget build(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        total,
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
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
    );
  }
}
