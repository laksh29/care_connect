import 'dart:ffi';

import 'package:care_connect/widget/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constants.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: pageBgColor,
      body: SafeArea(
          child: Center(
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
                      buildSignup(context);
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
      )),
    );
  }
}

Future<dynamic> buildLogin(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) => AlertDialog(
          title: Text(
            "Login",
            style: StyleConstants().titleStyle,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 8.0),
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: ctaBgColor, width: 2)),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(8.0),
                    prefixIcon: Icon(
                      Icons.person,
                      size: 20,
                      color: textColor,
                    ),
                    prefixIconConstraints: const BoxConstraints(
                      maxHeight: 17,
                      maxWidth: 25,
                    ),
                    border: InputBorder.none,
                    hintText: "Email Id",
                    hintStyle: StyleConstants().loginStyle,
                  ),
                ),
              ),
              buildHeight(15.0),
              Container(
                padding: const EdgeInsets.only(left: 8.0),
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: ctaBgColor, width: 2)),
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  enableSuggestions: false,
                  autocorrect: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(8.0),
                    prefixIcon: Icon(
                      Icons.password,
                      size: 20,
                      color: textColor,
                    ),
                    prefixIconConstraints: const BoxConstraints(
                      maxHeight: 17,
                      maxWidth: 25,
                    ),
                    border: InputBorder.none,
                    hintText: "Password",
                    hintStyle: StyleConstants().loginStyle,
                  ),
                ),
              ),
              buildHeight(25.0),
              SizedBox(
                height: 50,
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ctaBgColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: StyleConstants().buttonTextStyle,
                  ),
                ),
              ),
              // buildHeight(5.0),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password ?",
                    style: StyleConstants().loginStyle,
                  ))
            ],
          )));
}

Future<dynamic> buildSignup(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) => AlertDialog(
          title: Text(
            "Signup",
            style: StyleConstants().titleStyle,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 8.0),
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: ctaBgColor, width: 2)),
                child: CustomTextField(
                    hintText: "Email",
                    icon: Icons.person_rounded,
                    obscureText: false,
                    textInputType: TextInputType.emailAddress),
              ),
              buildHeight(15.0),
              Container(
                padding: const EdgeInsets.only(left: 8.0),
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: ctaBgColor, width: 2)),
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  enableSuggestions: false,
                  autocorrect: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(8.0),
                    prefixIcon: Icon(
                      Icons.password,
                      size: 20,
                      color: textColor,
                    ),
                    prefixIconConstraints: const BoxConstraints(
                      maxHeight: 17,
                      maxWidth: 25,
                    ),
                    border: InputBorder.none,
                    hintText: "Password",
                    hintStyle: StyleConstants().loginStyle,
                  ),
                ),
              ),
              buildHeight(25.0),
              SizedBox(
                height: 50,
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ctaBgColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {},
                  child: Text(
                    "Signup",
                    style: StyleConstants().buttonTextStyle,
                  ),
                ),
              ),
            ],
          )));
}
