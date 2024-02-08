import 'package:flutter/material.dart';
import 'package:wildsense_ai/common/fade_animation.dart';
import 'package:wildsense_ai/widget/custome_widget.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Image.asset(
                          'assets/images/forgetpassword.png',
                          height: 300,
                        ),
                      ),
                      const Text(
                        'Forget Passsword?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontFamily: 'SF Pro',
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Image.asset(
                        'assets/images/rounded.png',
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 50, right: 40, left: 40),
                        child: Column(
                          children: [
                            const Center(
                              child: FadeInAnimation(
                                delay: 1.2,
                                child: Text(
                                  "Please Enter your Email Address To Receive a Verification Code!",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: 'SF Pro',
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            const FadeInAnimation(
                              delay: 1.4,
                              child: CustomTextFormField(
                                hinttext: 'Enter Email',
                                obsecuretext: false,
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            FadeInAnimation(
                              delay: 1.6,
                              child: CustomElevatedButton(
                                message: 'Submit',
                                function: () {
                                  Navigator.pushNamed(context, '/otpscreen');
                                },
                                gradientColors: const [
                                  Color(0xFF9C3FE4),
                                  Color(0xFFC65647),
                                ],
                                borderRadius: 30.0,
                                elevation: 8.0,
                                height: 50.0,
                                width: double.infinity,
                              ),
                            )
                          ],
                        ),
                      )
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
