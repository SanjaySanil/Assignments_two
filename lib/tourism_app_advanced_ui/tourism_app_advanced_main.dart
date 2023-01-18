import 'package:demo/tourism_app_advanced_ui/screens/dashboard/dashboard.dart';
import 'package:demo/tourism_app_advanced_ui/screens/description_screen/description_screen.dart';
import 'package:demo/tourism_app_advanced_ui/screens/login_signup_screen/login_or_signup.dart';
import 'package:flutter/material.dart';

class TourismAppAdvancedUIMain extends StatelessWidget {
  const TourismAppAdvancedUIMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LoginOrSignUp(),
      initialRoute:LoginOrSignUp.loginOrSignUP,
      routes: {
        LoginOrSignUp.loginOrSignUP:(context)=>const LoginOrSignUp(),
        Dashboard.dashboard:(context)=>const Dashboard(),
        DescriptionScreens.descriptionScreen:(context)=>const DescriptionScreens(),
      },
    );
  }
}
