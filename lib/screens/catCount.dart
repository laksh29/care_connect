import 'package:care_connect/constants/constants.dart';
import 'package:care_connect/screens/registration.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/registrationForm.dart';

class CatCount extends StatefulWidget {
  const CatCount({super.key});

  @override
  State<CatCount> createState() => _CatCountState();
}

class _CatCountState extends State<CatCount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: pageBgColor,
        body: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Center(
                child: Column(children: [
                  Text(
                    "Available Data",
                    style: StyleConstants().headingStyle,
                  ),

                  buildHeight(25.0),
                  // ----------------------------------------------Name of Hospital
                  RegistrationField(
                    hintText: "No. of Beds available",
                    type: TextInputType.number,
                  ),
                  buildHeight(15.0),
                  // ----------------------------------------------Name of Hospital
                  RegistrationField(
                    hintText: "No. of Oxygen Cylinders available",
                    type: TextInputType.number,
                  ),
                  buildHeight(15.0),
                  // ------------------------------------Lindline number of Hospital
                  RegistrationField(
                      hintText: "No. of ambulance available",
                      type: TextInputType.number),

                  buildHeight(15.0),
                  // ------------------------------------Emergency number of hospital
                  RegistrationField(
                      hintText: "No. of nurse available",
                      type: TextInputType.number),
                  buildHeight(15.0),
                  // -----------------------------------------------------name of POC
                  RegistrationField(
                      hintText: "No. of Doctors available",
                      type: TextInputType.number),

                  buildHeight(15.0),
                  // --------------------------------------------contsct number of POC
                  RegistrationField(
                      hintText: "No. of attenders available",
                      type: TextInputType.number),

                  buildHeight(15.0),
                  SizedBox(
                    height: 40,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: boxColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                      onPressed: () {
                        final snackBar = SnackBar(
                          content: Text(
                            "Your Response has been recorded !",
                            style: GoogleFonts.poppins(),
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      child: Text(
                        "Submit",
                        style: StyleConstants().submitStyle,
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ));
  }
}
