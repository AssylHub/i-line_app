import 'package:flutter/material.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(color: Theme.of(context).colorScheme.surface),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            Image.asset(
              "assets/onboarding2.png",
              width: 200,
              height: 300,
              fit: BoxFit.contain,
            ),
            Text(
              "Выберите автомойку онлайн",
              style: TextStyle(
                color: Theme.of(context).colorScheme.tertiary,
                fontSize: 23,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
