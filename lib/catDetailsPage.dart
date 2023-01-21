import 'dart:math';

import 'package:care_connect/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pageBgColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 25, left: 8.0, right: 8.0),
        child: Column(
          children: [
            Text(
              "Available Beds Around",
              style: StyleConstants().headingStyle,
            ),
            buildHeight(10.0),
            SizedBox(
              height: MediaQuery.of(context).size.height - 100,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: details.length,
                  itemBuilder: ((context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 75,
                        width: 340,
                        margin: EdgeInsets.only(
                            top: 5, left: 10, right: 10, bottom: 2),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          color: boxColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(details.elementAt(index).hospitalName,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: StyleConstants().hospitalNameStyle),
                              buildHeight(2.0),
                              Row(
                                children: [
                                  Text(
                                    "${details.elementAt(index).avlBeds} beds/${details.elementAt(index).dist} kms",
                                    style:
                                        GoogleFonts.poppins(color: textColor),
                                  ),
                                  const Spacer(),
                                  SizedBox(
                                    height: 25,
                                    width: 25,
                                    child: GestureDetector(
                                        onTap: () {},
                                        child: Icon(
                                          Icons.navigate_next_rounded,
                                          color: textColor,
                                        )),
                                  )
                                ],
                              )
                            ]),
                      ),
                    );
                  })),
            )
          ],
        ),
      )),
    );
  }
}
