import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:wildsense_ai/common/fade_animation.dart';
import 'package:wildsense_ai/widget/custome_widget.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  int _timerValue = 30;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (timer) {
      if (_timerValue == 0) {
        setState(() {
          _timerValue = 30; // Reset the timer to 30 seconds
        });
      } else {
        setState(() {
          _timerValue--; // Decrement the timer value
        });
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset('assets/images/newbackground.png', fit: BoxFit.cover,),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Image.asset(
                          'assets/images/otp.png',
                          height: 250,
                          width: 250,
                        ),
                      ),
                      const Text(
                        'Verify you Email',
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
                                  "Please Enter the 4 Digit Code Sent To xxxxx123@gmail.com",
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
                              height: 40,
                            ),
                            FadeInAnimation(
                              delay: 1.4,
                              child: PinCodeTextField(
                                length: 4,
                                obscureText: true,
                                keyboardType: TextInputType.number,
                                animationType: AnimationType.scale,
                                textStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: 'SF Pro'
                                ),
                                animationDuration: Duration(milliseconds: 300),
                                onChanged: (value) {},
                                appContext: context,
                                pinTheme: PinTheme(
                                  shape: PinCodeFieldShape.box,
                                  borderRadius: BorderRadius.circular(20),
                                  fieldWidth: 50,
                                  fieldHeight: 50,
                                  activeColor: Colors.white,
                                  inactiveColor: Colors.white, // Ensure inactive color is set to white or transparent
                                ),
                                backgroundColor: Colors.transparent, // Set background color to transparent
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            FadeInAnimation(
                              delay: 1.6,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Didn't receive any code yet? ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontFamily: 'SF Pro',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/otpscreen');
                                    },
                                    child: const Text(
                                      'Resend Code',
                                      style: TextStyle(
                                        color: Colors.redAccent,
                                        fontSize: 15,
                                        fontFamily: 'SF Pro',
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.underline,
                                        decorationColor: Colors.redAccent,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            FadeInAnimation(
                              delay: 1.7,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    const TextSpan(
                                      text: 'You can resend code in ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontFamily: 'SF Pro',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' $_timerValue s',
                                      style: const TextStyle(
                                        color: Colors.blue, // Change the color to dark blue
                                        fontSize: 14,
                                        fontFamily: 'SF Pro',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            FadeInAnimation(
                              delay: 1.9,
                              child: CustomElevatedButton(
                                message: 'Verify',
                                function: () {
                                  Navigator.pushNamed(context, '/newpassword');
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
