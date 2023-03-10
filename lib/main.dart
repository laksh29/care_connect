import 'package:care_connect/screens/catDetailsPage.dart';
import 'package:care_connect/firebase_options.dart';
import 'package:care_connect/screens/homePage.dart';
import 'package:care_connect/screens/login_or_not.dart';
import 'package:care_connect/screens/registration.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'screens/bottomNav.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CareConnect',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        "/": (context) => const LoginOrNot(),
        "/homepage": (context) => const HomePage(),
        "/details": (context) => const Details(),
        "/registration": (context) => const RegistrationForm(),
        "/bottomNav":(context) => const BottomNav()
      },
    );
  }
}
