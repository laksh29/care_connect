import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
          child: Center(
              child: Column(
            children: [
              buildHeight(20.0),
              searchBox(),
              buildHeight(20.0),
              Center(
                child: Text(
                  "Most Needed",
                  style: StyleConstants().headingStyle,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height - 179,
                child: GridView.builder(
                    physics: BouncingScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemCount: categories.length,
                    itemBuilder: (((context, index) {
                      final cat = categories[index]!;
                      return Stack(children: [
                        Container(
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: boxColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 150,
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: Center(
                              child: Container(
                                height: 60,
                                width: 60,
                                color: Colors.teal[400],
                                child: Center(child: Text("Icon")),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 10,
                          bottom: 0,
                          child: Container(
                            padding: const EdgeInsets.only(
                                left: 20.0, right: 0.0, top: 8.0, bottom: 8.0),
                            height: 35,
                            width: 150,
                            decoration: BoxDecoration(
                              color: desBoxColor,
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15)),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  cat,
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      color: textColor),
                                ),
                                const Spacer(),
                                SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, "/details");
                                      },
                                      child: Icon(
                                        Icons.navigate_next_rounded,
                                        color: textColor,
                                      )),
                                )
                              ],
                            ),
                          ),
                        )
                      ]);
                    }))),
              ),
              buildHeight(10.0),
            ],
          )),
        ),
      ),
    );
  }
}

Widget searchBox() {
  return Container(
    height: 54,
    width: 330,
    padding: const EdgeInsets.symmetric(horizontal: 15),
    decoration: BoxDecoration(
      color: const Color(0xffF7F7F7),
      border: Border.all(color: ctaBgColor, width: 2),
      borderRadius: BorderRadius.circular(15),
    ),
    child: TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0),
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
