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
          padding: const EdgeInsets.all(10.0),
          child: Center(
              child: ListView(
            children: [
              buildHeight(20.0),
              searchBox(),
              buildHeight(20.0),
              Center(
                child: Text(
                  "Most Needed",
                  style: GoogleFonts.poppins(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Constants().headingColor),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height - 170,
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemCount: categories.length,
                    itemBuilder: (((context, index) {
                      return Container(
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: Constants().boxColor,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all()),
                        height: 150,
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Center(
                            child: Text(categories[index]!),
                          ),
                        ),
                      );
                    }))),
              )
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
      border: Border.all(color: Constants().ctaBgColor, width: 2),
      borderRadius: BorderRadius.circular(15),
    ),
    child: TextField(
      // onChanged: (value) => _runFilter(value),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0),
        prefixIcon: Icon(
          Icons.search,
          color: Constants().textColor,
          size: 20,
        ),
        prefixIconConstraints: const BoxConstraints(
          maxHeight: 17,
          minWidth: 25,
        ),
        border: InputBorder.none,
        hintText: 'Search',
        hintStyle: TextStyle(color: Constants().textColor),
      ),
    ),
  );
}
