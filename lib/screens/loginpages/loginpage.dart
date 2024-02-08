import 'package:flutter/material.dart';
import 'package:wildsense_ai/common/common.dart';
import 'package:wildsense_ai/common/fade_animation.dart';
import 'package:wildsense_ai/widget/custome_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    bool flag = true;
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
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image.asset(
                      'assets/images/character1.png',
                    ),
                  ),
                  Stack(
                    children: [
                      Image.asset(
                        'assets/images/rounded.png',
                        fit: BoxFit.fitHeight,
                      ),
                        Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            const Center(
                            child: FadeInAnimation(
                              delay: 1.2,
                              child: Text(
                                'Welcome Back!',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontFamily: 'SF Pro',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                            const SizedBox(
                              height: 10,
                            ),
                            const FadeInAnimation(
                              delay: 1.4,
                              child: Text(
                                'Login with your Credentials 😇',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'SF Pro',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                           const  FadeInAnimation(
                              delay: 1.6,
                              child: CustomTextFormField(
                                hinttext: 'Enter Email',
                                obsecuretext: false,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            FadeInAnimation(
                              delay: 1.8,
                              child: TextFormField(
                              obscureText: flag ? true : false,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(18),
                                hintText: "Enter your password",
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
                            FadeInAnimation(
                              delay: 2.0,
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/resetpassword');
                                    },
                                    child: const Text(
                                      "Forget Password?",
                                      style: TextStyle(
                                        color: Colors.white54,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'SF Pro',
                                      ),
                                    )),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            FadeInAnimation(
                              delay: 2.2,
                              child: CustomElevatedButton(
                                message: 'Login',
                                gradientColors: const[
                                  Color(0xFF9C3FE4),
                                  Color(0xFFC65647),
                                ],
                                borderRadius: 30.0,
                                elevation: 8.0,
                                height: 50.0,
                                width: double.infinity,
                                function: () {
                                  Navigator.pushNamed(context, '/registerpage');
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            FadeInAnimation(delay: 2.4, child: Image.asset(
                              'assets/images/continuewith.png'
                            ),),
                            const SizedBox(
                              height: 20,
                            ),
                            FadeInAnimation(
                              delay: 2.6,
                              child: IconButton(
                                onPressed: () {},
                                icon: Image.asset('assets/images/google.png'),
                              ),
                            ),

                            const SizedBox(
                              height: 50,
                            ),
                             FadeInAnimation(
                              delay: 2.6,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Don't have an Account?",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'SF Pro',
                                      fontSize: 16
                                    ),
                                  ),
                                  TextButton(onPressed: () {
                                    Navigator.pushNamed(context, '/registerpage');
                                  }, child: const Text('Register',
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
