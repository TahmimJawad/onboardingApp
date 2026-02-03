import 'package:flutter/material.dart';

// ignore: camel_case_types
class locationImageWidget extends StatelessWidget {
  const locationImageWidget({super.key});

  @override
  Widget build(context) {
    return Align(
      alignment: Alignment.center,
      child: Image.asset(
        'assets/images/location.jpg',
        width: 305,
        height: 215,
        fit: BoxFit.cover,
      ),
    );
  }
}
