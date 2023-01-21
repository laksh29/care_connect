import 'package:care_connect/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants().pageBgColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 25, left: 8.0, right: 8.0),
        child: Center(
          child: Column(
            children: [
              Text(
                "Available Beds Around",
                style: GoogleFonts.poppins(textStyle: headingStyle()),
              ),
              buildHeight(10.0),
              SizedBox(
                height: MediaQuery.of(context).size.height - 100,
                child: ListView.builder(
                    itemCount: details.length,
                    itemBuilder: ((context, index) {
                      return Container(
                        height: 75,
                        width: 340,
                        margin: const EdgeInsets.only(
                            top: 5, left: 10, right: 10, bottom: 2),
                        padding:
                            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          color: Constants().boxColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      );
                    })),
              )
            ],
          ),
        ),
      )),
    );
  }
}
