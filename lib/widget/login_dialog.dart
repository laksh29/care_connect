import 'package:care_connect/constants/constants.dart';
import 'package:care_connect/screens/loginPage.dart';
import 'package:care_connect/widget/custom_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Future<dynamic> buildLogin(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) => AlertDialog(
          title: Text(
            "Login",
            style: StyleConstants().signupStyle,
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
                    controller: emailController,
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
                child: CustomTextField(
                  controller: passwordController,
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                  hintText: 'Passowrd',
                  icon: Icons.password_rounded,
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
                  onPressed: () async {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    );
                    try {
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: emailController.text,
                          password: passwordController.text);
                      // debugPrint(emailController.text);
                      // debugPrint(passController.text);

                    } on FirebaseAuthException catch (e) {
                      Navigator.pop(context);
                      if (e.code == 'user-not-found') {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text(e.code.toString()),
                            );
                          },
                        );
                      } else if (e.code == 'wrong-password') {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text(e.code.toString()),
                            );
                          },
                        );
                      } else if (e.message == 'Given String is empty or null') {
                        debugPrint(e.code);
                        debugPrint(e.message);
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text(e.code.toString()),
                            );
                          },
                        );
                      }
                    }
                  },
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
