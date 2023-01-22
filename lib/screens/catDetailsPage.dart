// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:care_connect/hospitalData/data_model.dart';
import 'package:care_connect/hospitalData/hospital_data_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:care_connect/constants/constants.dart';

class Details extends StatelessWidget {
  const Details({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cat = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      backgroundColor: pageBgColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 25, left: 8.0, right: 8.0),
        child: Center(
          child: Column(
            children: [
              Text(
                "Available $cat Around",
                style: GoogleFonts.poppins(
                    textStyle: StyleConstants().headingStyle),
              ),
              buildHeight(10.0),
              Expanded(
                child: StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('Hospitals')
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return ListView.builder(
                            itemCount: snapshot.data!.docs.length,
                            itemBuilder: ((context, index) {
                              debugPrint(
                                  "======>" + snapshot.data!.docs.first.id);
                              return Container(
                                height: 75,
                                width: 340,
                                margin: const EdgeInsets.only(
                                    top: 5, left: 10, right: 10, bottom: 2),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                decoration: BoxDecoration(
                                  color: boxColor,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      snapshot.data!.docs
                                          .elementAt(index)['hospitalDetails']
                                              ['name']
                                          .toString(),
                                    ),
                                    Text(
                                      snapshot.data!.docs
                                          .elementAt(index)['Items'][index][cat]
                                          .toString(),
                                    ),
                                  ],
                                ),
                              );
                            }));
                      } else if (snapshot.hasError) {
                        return Center(child: Text(snapshot.error.toString()));
                      } else {
                        return const Center(child: SingleChildScrollView());
                      }
                    }),
              )
            ],
          ),
        ),
      )),
    );
  }
}
