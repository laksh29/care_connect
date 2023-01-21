import 'package:care_connect/screens/catDetailsPage.dart';
import 'package:care_connect/firebase_options.dart';
import 'package:care_connect/screens/homePage.dart';
import 'package:care_connect/screens/loginPage.dart';
import 'package:care_connect/screens/registration.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'CareConnect',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      useMaterial3: true,
    ),
    // home: const RegistrationForm(),
    routes: {
      "/": (context) => const LoginPage(),
      "/homepage": (context) => const HomePage(),
      "/details": (context) => const Details(),
      "/registration": (context) => const RegistrationForm(),
    },
  ));
}
