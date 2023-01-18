import 'package:demo/tourism_app_advanced_ui/screens/dashboard/dashboard.dart';
import 'package:demo/tourism_app_advanced_ui/screens/login_signup_screen/reusable_elevated_button/reusable_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginOrSignUp extends StatelessWidget {
  const LoginOrSignUp({Key? key}) : super(key: key);
  static String loginOrSignUP="loginOrSignUp";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .5,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Image.asset(
                "assets/images/tourism_two_images/airplane.png",
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.3,
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.080,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, Dashboard.dashboard);
                    },
                    child: const Text(
                      "Login In",
                      style: TextStyle(fontSize:25),
                    ),
                  ),
                ),
                const Text(
                  "-OR-",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ReusableElevatedButton(
                      name: "Login with Facebook",
                      color: Colors.blueAccent.shade400,
                      iconData: FontAwesomeIcons.facebook,
                      onTap:(){},
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    ReusableElevatedButton(
                      name: "Login with Twitter",
                      color: Colors.blue.shade400,
                      iconData: FontAwesomeIcons.twitter,
                      onTap:(){},
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    ReusableElevatedButton(
                      name: "Login with Google",
                      color: Colors.red,
                      iconData: FontAwesomeIcons.google,
                      onTap:(){},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
