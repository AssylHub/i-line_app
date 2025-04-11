import 'package:flutter/material.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment(0, -0.3),
      children: [
        Image.asset(
          "assets/Group 11.png",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),

        Text(
          "I-line.kz - сервис для онлайн-бронирования очереди в автомойки. Больше никаких очередей!",
          style: TextStyle(color: Colors.white, fontSize: 23),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
