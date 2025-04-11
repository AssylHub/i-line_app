import 'package:flutter/material.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(color: Theme.of(context).colorScheme.surface),
        Image.asset(
          "assets/Group 11.png",
          width: 200,
          height: 300,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
