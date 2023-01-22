import 'package:care_connect/constants/constants.dart';
import 'package:care_connect/screens/catDetailsPage.dart';
import 'package:care_connect/screens/homePage.dart';
import 'package:care_connect/screens/profile.dart';
import 'package:care_connect/screens/registration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int count = 0;
  final screens = [
    const HomePage(),
    // const RegistrationForm(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[count],
      extendBodyBehindAppBar: true,
      extendBody: true,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 162, 156, 244),
        // backgroundColor: Color.fromARGB(0, 0, 0, 0),
        type: BottomNavigationBarType.fixed,
        currentIndex: count,
        onTap: (index) => setState(() => count = index),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.contact_page_sharp), label: "Registration Form"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        selectedItemColor: const Color.fromARGB(255, 229, 228, 247),
      ),
    );
  }
}
