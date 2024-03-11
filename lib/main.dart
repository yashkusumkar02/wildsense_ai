import 'package:flutter/material.dart';
import 'package:wildsense_ai/screens/dashboardpage/homescreen/homescreen.dart';
import 'package:wildsense_ai/screens/loginpages/forgetpassword/resetpassword.dart';
import 'package:wildsense_ai/screens/loginpages/loginpage.dart';
import 'package:wildsense_ai/screens/loginpages/newpassword/newpasswordscreen.dart';
import 'package:wildsense_ai/screens/loginpages/otpverify/otpverificationscreen.dart';
import 'package:wildsense_ai/screens/loginpages/passwordsetted/passwordsetted.dart';
import 'package:wildsense_ai/screens/onboardingscreen/onboardingscreen.dart';
import 'package:wildsense_ai/screens/registerscreen/profilecreated/emailverification.dart';
import 'package:wildsense_ai/screens/registerscreen/registerscreen.dart';
import 'package:wildsense_ai/screens/splashscreen/splashscreen.dart';
import 'package:wildsense_ai/screens/welcomepage/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/onboarding' : (context) => const OnboardingScreen(),
        '/welcomepage': (context) => const WelcomePage(),
        '/loginpage' : (context) => const LoginPage(),
        '/registerpage' : (context) => const RegisterPage(),
        '/resetpassword' : (context) => const ResetPassword(),
        '/otpscreen' : (context) => const OtpScreen(),
        '/newpassword' : (context) => const NewPassword(),
        '/passwordsetted' : (context) => const PasswordSetted(),
        '/emailverification' : (context) => const EmailVerification(),
        '/homescreen' : (context) => const HomeScreen(),
      },

    );
  }
}
