import 'package:flutter/material.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

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
              "assets/onboarding3.png",
              width: 200,
              height: 300,
              fit: BoxFit.contain,
            ),
            Text(
              "Встаньте в очередь",
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
