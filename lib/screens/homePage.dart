import 'package:care_connect/constants/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe2fffe),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
          child: Column(
            children: [
              buildHeight(5.0),
              searchBox(),
              buildHeight(20.0),
              Text(
                "Most Needed",
                style: GoogleFonts.poppins(
                    textStyle: StyleConstants().headingStyle),
              ),
              Expanded(
                child: GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemCount: categoriesList.length,
                    itemBuilder: (((context, index) {
                      final cat = categoriesList.elementAt(index).cat;
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Colors.teal,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                ),
                                child: Center(
                                  child: SizedBox(
                                    height: 40,
                                    width: 40,
                                    child: Image(
                                        image: AssetImage(categoriesList
                                            .elementAt(index)
                                            .img)),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, "/details",
                                      arguments: cat);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: desBoxColor,
                                    borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          cat,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: textColor),
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          size: 15,
                                          color: textColor,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    }))),
              ),
              buildHeight(10.0),
            ],
          ),
        ),
      ),
    );
  }
}

Widget searchBox() {
  return Container(
    height: 54,
    padding: const EdgeInsets.symmetric(horizontal: 15),
    decoration: BoxDecoration(
      color: const Color(0xffF7F7F7),
      border: Border.all(color: ctaBgColor, width: 2),
      borderRadius: BorderRadius.circular(15),
    ),
    child: TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(0),
        prefixIcon: Icon(
          Icons.search,
          color: textColor,
          size: 20,
        ),
        prefixIconConstraints: const BoxConstraints(
          maxHeight: 17,
          minWidth: 25,
        ),
        border: InputBorder.none,
        hintText: 'Search',
        hintStyle: TextStyle(color: textColor),
      ),
    ),
  );
}
