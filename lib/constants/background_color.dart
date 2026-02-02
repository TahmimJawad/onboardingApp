import 'package:flutter/material.dart';

class BackgroundGradientColor extends StatelessWidget {
  final Widget child;
  const BackgroundGradientColor({super.key, required this.child});

  @override
  Widget build(context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 11, 0, 36),
            Color.fromARGB(255, 8, 34, 87),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: child);
  }
}
