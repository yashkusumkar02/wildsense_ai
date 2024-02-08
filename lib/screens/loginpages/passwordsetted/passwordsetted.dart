import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:wildsense_ai/common/fade_animation.dart';
import 'package:wildsense_ai/widget/custome_widget.dart';

class PasswordSetted extends StatelessWidget {
  const PasswordSetted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/backgroundimage.png',
              fit: BoxFit.cover,
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Lottie.network(
                          'https://lottie.host/1662938f-21b0-4453-8117-9d5d97ce6384/NYJCrIFXWY.json',
                          width: 300,
                          height: 300,
                          fit: BoxFit.fill),
                    ),
                    const Stack(
                      children: [
                        FadeInAnimation(
                          delay: 1.4,
                          child: Text(
                            'Successfully Created!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontFamily: 'SF Pro',
                              fontWeight: FontWeight.w700
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Stack(
                      children: [
                        FadeInAnimation(
                          delay: 1.6,
                          child: Text(
                            'You Have Successfully created a new password.',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontFamily: 'SF Pro'
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                        child: FadeInAnimation(
                          delay: 1.8,
                          child: CustomElevatedButton(
                            message: 'Get Started',
                            function: () {
                              Navigator.pushNamed(context, '/loginpage');
                            },
                            borderRadius: 20,
                            elevation: 8.0,
                            gradientColors: const [
                              Color(0xFF9C3FE4),
                              Color(0xFFC65647),
                            ],
                            height: 50,
                            width: double.infinity,

                          ),
                        ),
                      ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
