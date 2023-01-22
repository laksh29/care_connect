import 'package:care_connect/constants/constants.dart';
import 'package:care_connect/main.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  PlatformFile? pickedFile;
  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;
    setState(() {
      pickedFile = result.files.first;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pageBgColor,
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(children: [
            buildHeight(20.0),
            Container(
                width: 300,
                height: 150,
                decoration: BoxDecoration(
                    border: Border.all(color: loginColor, width: 2),
                    borderRadius: BorderRadius.circular(15)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: const Image(
                    image: NetworkImage(
                        "https://lh3.googleusercontent.com/p/AF1QipPIG-cb3E2JGPiZkhn6Dkj1eK7B375X57_GA3fQ=s1360-w1360-h1020"),
                    fit: BoxFit.cover,
                  ),
                )),
            buildHeight(10.0),
            SizedBox(
              height: 30,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: ctaBgColor),
                onPressed: () {
                  selectFile();
                },
                child: Text(
                  "Upload",
                  style: GoogleFonts.poppins(fontSize: 12, color: textColor),
                ),
              ),
            ),
            buildHeight(30.0),
            ProfileOptions(
                type: "Hospital Name", data: "Jhode Multispeciality Hospital"),
            buildHeight(10.0),
            ProfileOptions(type: "Landline Number", data: "7974781060"),
            buildHeight(10.0),
            ProfileOptions(type: "Emergency Number", data: "9146477923"),
            buildHeight(10.0),
            ProfileOptions(type: "Name of POC", data: "Dr. Atharva Jhode"),
            buildHeight(10.0),
            ProfileOptions(type: "Contact POC", data: "7974781060"),
            buildHeight(10.0),
            ProfileOptions(
                type: "Address of Hospital",
                data:
                    "Room 206, 5 star unisex hospital, CRPF gate 3, Digdoh hills, Hingna Road. 440016.",
                height: 100,
                lines: 5),
            buildHeight(10.0),
            SizedBox(
              height: 40,
              width: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[300],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                onPressed: () async {
                  await FirebaseAuth.instance.signOut();
                },
                child: Text(
                  "LogOut",
                  style: StyleConstants().profileStyle,
                ),
              ),
            ),
            buildHeight(10.0)
          ]),
        ),
      )),
    );
  }
}

class ProfileOptions extends StatelessWidget {
  String data;
  String type;
  double height;
  int lines;
  ProfileOptions(
      {super.key,
      required this.type,
      required this.data,
      this.height = 60,
      this.lines = 1});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        type,
        style: StyleConstants().loginStyle,
        textAlign: TextAlign.left,
      ),
      Container(
        height: height,
        width: 300,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: boxColor, width: 2)),
        child: Center(
          child: Text(
            data,
            style: StyleConstants().profileStyle,
            maxLines: lines,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      )
    ]);
  }
}
