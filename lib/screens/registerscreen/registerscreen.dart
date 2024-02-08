import 'package:flutter/material.dart';
import 'package:wildsense_ai/common/fade_animation.dart';
import 'package:wildsense_ai/widget/custome_widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/newbackground.png',
              fit: BoxFit.cover,
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Image.asset(
                        'assets/images/character2.png',
                      ),
                    ),
        ],
                  ),
                  Stack(
                    children: [
                      Image.asset(
                        'assets/images/rounded.png',
                        fit: BoxFit.fitHeight,
                      ),
                       Padding(
                        padding:  EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                             Center(
                              child: FadeInAnimation(
                                delay: 1,
                                child: Text(
                                  'Get Started Free',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 35,
                                    fontFamily: 'SF Pro',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                             FadeInAnimation(
                              delay: 1.3,
                              child: Text(
                                'Create your Account 😎',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'SF Pro',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            FadeInAnimation(
                              delay: 1.6,
                              child: CustomTextFormField(
                                hinttext: 'Enter your Name',
                                obsecuretext: true,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            FadeInAnimation(
                              delay: 1.6,
                              child: CustomTextFormField(
                                hinttext: 'Enter your Email',
                                obsecuretext: true,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            FadeInAnimation(
                              delay: 1.6,
                              child: CustomTextFormField(
                                hinttext: 'Enter your Password',
                                obsecuretext: true,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            FadeInAnimation(
                              delay: 1.6,
                              child: CustomTextFormField(
                                hinttext: 'Confirm Password',
                                obsecuretext: true,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            FadeInAnimation(
                              delay: 2.3,
                              child: CustomElevatedButton(
                                function: () {
                                  Navigator.pushNamed(context, '/emailverification');
                                },
                                message: 'Register',
                                gradientColors: [
                                  Color(0xFF9C3FE4),
                                  Color(0xFFC65647),
                                ],
                                borderRadius: 30.0,
                                elevation: 8.0,
                                height: 50.0,
                                width: double.infinity,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            FadeInAnimation(
                              delay: 2.6,
                              child: Image.asset(
                                'assets/images/signwiwth.png',
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            FadeInAnimation(
                              delay: 2.9,
                              child: IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  'assets/images/google.png'
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            FadeInAnimation(
                              delay: 2.6,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Already have an Account?",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'SF Pro',
                                        fontSize: 16
                                    ),
                                  ),
                                  TextButton(onPressed: () {
                                    Navigator.pushNamed(context, '/loginpage');
                                  }, child: const Text('Login',
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontFamily: 'SF Pro',
                                        fontSize: 16
                                    ),))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
