import 'package:care_connect/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pageBgColor,
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            buildHeight(30.0),
            Container(
              height: 250,
              child: AspectRatio(
                aspectRatio: 1,
                child: Container(
                  color: Colors.grey,
                ),
              ),
            ),
            buildHeight(10.0),
            Text(
              "CareConnect",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: textColor),
              ),
            ),
            const Spacer(),
            Container(
              height: 70,
              width: 170,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/homepage");
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ctaBgColor,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10)),
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        child: const AspectRatio(
                          aspectRatio: 1,
                          child: Image(
                              image: AssetImage("assets/google search.png")),
                        ),
                      ),
                      buildWidth(20.0),
                      Text(
                        "Login",
                        style: GoogleFonts.poppins(
                            fontSize: 22, color: textColor),
                      )
                    ],
                  )),
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
