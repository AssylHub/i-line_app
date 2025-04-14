import 'package:flutter/material.dart';
import 'package:iline_car_wash_app/features/onboarding/presentation/components/onboarding1.dart';
import 'package:iline_car_wash_app/features/onboarding/presentation/components/onboarding2.dart';
import 'package:iline_car_wash_app/features/onboarding/presentation/components/onboarding3.dart';
import 'package:iline_car_wash_app/features/onboarding/presentation/components/onboarding4.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  List onboardings = [
    Onboarding1(),
    Onboarding2(),
    Onboarding3(),
    Onboarding4(),
  ];

  PageController pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            controller: pageController,
            scrollDirection: Axis.horizontal,
            itemCount: onboardings.length,
            itemBuilder: (context, index) {
              return onboardings[index];
            },
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/logo.png", scale: 0.8),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    border: Border.all(
                      color: Theme.of(context).colorScheme.secondary,
                      width: 3,
                    ),
                  ),
                  child: Icon(
                    Icons.close,
                    color: Theme.of(context).colorScheme.onPrimary,
                    size: 50,
                    weight: 400,
                  ),
                ),
              ],
            ),
          ),
          // Dot indicators
          Align(
            alignment: Alignment(0, 0.65),
            child: FractionallySizedBox(
              widthFactor: 1.0,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(onboardings.length, (dotIndex) {
                  return Container(
                    width: 20,
                    height: 20,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          dotIndex == currentIndex
                              ? Theme.of(context).colorScheme.primary
                              : Theme.of(context).colorScheme.inverseSurface,
                    ),
                  );
                }),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: FractionallySizedBox(
              widthFactor: 1.0,
              child: Container(
                // width: 80,
                height: 100,
                padding: EdgeInsets.all(8),
                child: TextButton(
                  onPressed: () {
                    // Check if not on last page
                    if (currentIndex < onboardings.length - 1) {
                      pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Theme.of(context).colorScheme.onPrimary,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Text("Далее", style: TextStyle(fontSize: 25)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
