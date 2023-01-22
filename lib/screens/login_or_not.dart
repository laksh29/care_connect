import 'package:care_connect/screens/homePage.dart';
import 'package:care_connect/screens/loginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginOrNot extends StatelessWidget {
  const LoginOrNot({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          
          return const HomePage();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
