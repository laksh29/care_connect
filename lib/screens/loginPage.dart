import 'package:care_connect/core/user_auth.dart';
import 'package:care_connect/widget/custom_textfield.dart';
import 'package:care_connect/widget/login_dialog.dart';
import 'package:care_connect/widget/signup_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

TextEditingController passwordController = TextEditingController();

TextEditingController emailController = TextEditingController();

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pageBgColor,
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                buildHeight(30.0),
                SizedBox(
                  height: 250,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      color: Colors.grey,
                    ),
                  ),
                ),
                buildHeight(10.0),
                Text("CareConnect", style: StyleConstants().titleStyle),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 60,
                      width: 120,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ctaBgColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        onPressed: () {
                          buildLogin(context);
                        },
                        child: Text(
                          "Login",
                          style: StyleConstants().buttonTextStyle,
                        ),
                      ),
                    ),
                    buildWidth(15.0),
                    SizedBox(
                      height: 60,
                      width: 120,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ctaBgColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        onPressed: () {
                          buildSignup(context,
                              emailController: emailController,
                              passwordController: passwordController);
                        },
                        child: Text(
                          "Signup",
                          style: StyleConstants().buttonTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
