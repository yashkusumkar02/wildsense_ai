import 'package:flutter/material.dart';
import 'package:wildsense_ai/common/fade_animation.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/backgroundimage.png'
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    FadeInAnimation(
                      delay: 1,
                      child: Container(
                        width: 300,
                        height: 380,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF312434),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(38),
                          ),
                          shadows: const [BoxShadow(
                            color: Color(0x3FFFFFFF),
                            blurRadius: 28.30,
                            offset: Offset(0,0),
                            spreadRadius: 0,
                          ),
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            'VIDEO',
                            style: TextStyle(
                              color: Colors.white24,
                              fontSize: 50,
                              fontFamily: 'SF Pro',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const FadeInAnimation(
                      delay: 1.3,
                      child: Text(
                        'START YOUR JOURNEY WITH',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'SF Pro',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const FadeInAnimation(
                      delay: 1.6,
                      child: Text(
                        'WildLife Conservation in AI 🚀',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: 'SF Pro',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FadeInAnimation(delay: 1.9,child: IconButton(onPressed: () {Navigator.pushNamed(context, '/loginpage');}, icon: Image.asset('assets/images/nextbutton.png'),)),
                        ],
                      ),
                    )
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
