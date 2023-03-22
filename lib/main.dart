import 'package:flutter/material.dart';
import 'package:shopforcoffee/screens/CartScreen/Cart_Screen.dart';
import 'package:shopforcoffee/screens/CompleteProfile/Complete_Profile_Screen.dart';
import 'package:shopforcoffee/screens/DetailsScreen/Details_Screen.dart';
import 'package:shopforcoffee/screens/HomeScreen/Home_Screen.dart';
import 'package:shopforcoffee/screens/OTPScreen/OTP_Screen.dart';
import 'package:shopforcoffee/screens/ProfileScreen/Profile_Screen.dart';
import 'package:shopforcoffee/screens/SignUpScreen/SignUp_Screen.dart';
import 'package:shopforcoffee/screens/loginscreen/login_screen.dart';
import 'constants.dart';
import 'screens/TourScreen/tour_screen.dart';
import 'theme.dart';
import 'screens/ForgotpassScreen/Forget_Screen.dart';
import 'screens/LoginSuccessScreen/Login_Success.dart';
import 'screens/Bottom_Nav_Bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: buildThemeData(),
      home: Tourscreen(),
      routes: {
        Tourscreen.id: (context) => Tourscreen(),
        LoginScreen.id: (context) => LoginScreen(),
        ForgotScreen.id: (context) => ForgotScreen(),
        LoginSuccess.id: (context) => LoginSuccess(),
        SignUp.id: (context) => SignUp(),
        CompleteProfile.id: (context) => CompleteProfile(),
        OTPScreen.id: (context) => OTPScreen(),
        Home_Screen.id: (context) => Home_Screen(),
        DetailsPage.id: (context) => DetailsPage(),
        CartScreen.id: (context) => CartScreen(),
        Profile_Screen.id: (context) => Profile_Screen(),
        Bottom_Nav.id: (context) => Bottom_Nav(),
      },
    );
  }
}
