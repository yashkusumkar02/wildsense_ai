import 'package:flutter/material.dart';
import 'package:wildsense_ai/common/common.dart';
import 'package:wildsense_ai/common/fade_animation.dart';
import 'package:wildsense_ai/widget/custome_widget.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool rememberMe = false;

  void _onRememberMeChanged(bool? newValue) {
    setState(() {
      rememberMe = newValue ?? false;

      if (rememberMe) {
        // TODO: Here goes your functionality that remembers the user.
      } else {
        // TODO: Forget the user
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    bool flag = true;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset('assets/images/backgroundimage.png'),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/otpscreen');
                          },
                          icon: Image.asset('assets/images/arrow-left.png'),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Image.asset(
                          'assets/images/newpassword.png',
                          height: 150,
                          width: 300,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const FadeInAnimation(
                        delay: 1.2,
                        child: Text(
                          'Create new Password',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'SF Pro',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const FadeInAnimation(
                        delay: 1.4,
                        child: Text(
                          'Do not tell anyone the new password, \nyour password is yours.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'SF Pro',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: FadeInAnimation(
                              delay: 1.6,
                              child: TextFormField(
                                obscureText: flag ? true : false,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(18),
                                  hintText: "Create a New Password",
                                  hintStyle: Common().hinttext,
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.remove_red_eye_outlined,
                                      color: Colors.white38,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, right: 20.0),
                            child: FadeInAnimation(
                              delay: 2.0,
                              child: TextFormField(
                                obscureText: flag ? true : false,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(18),
                                  hintText: "Confirm a New Password",
                                  hintStyle: Common().hinttext,
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.remove_red_eye_outlined,
                                      color: Colors.white38,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          FadeInAnimation(
                            delay: 2.2,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10, right: 20),
                                  child: Checkbox(
                                    value: rememberMe,
                                    onChanged: _onRememberMeChanged,
                                  ),
                                ),
                                Text(
                                  'Remember me',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'SF Pro',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          FadeInAnimation(
                            delay: 2.2,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20, right: 20),
                              child: CustomElevatedButton(
                                message: 'Continue',
                                function: () {
                                  Navigator.pushNamed(context, '/passwordsetted');
                                },
                                gradientColors: [
                                  Color(0xFF9C3FE4),
                                  Color(0xFFC65647),
                                ],
                                borderRadius: 30.0,
                                elevation: 8.0,
                                height: 50.0,
                                width: double.infinity,
                              ),
                            )
                          ),
                        ],
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
