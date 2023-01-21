import 'package:care_connect/catDetailsPage.dart';
import 'package:care_connect/homePage.dart';
import 'package:care_connect/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'CareConnect',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      useMaterial3: true,
    ),
    home: const LoginPage(),
    // routes: {
    //   "/": (context) => LoginPage(),
    //   "/homepage": (context) => HomePage(),
    //   "/details": (context) => Details(),
    // },
  ));
}
