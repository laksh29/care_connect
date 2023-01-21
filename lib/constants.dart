import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyleConstants {
  TextStyle headingStyle = GoogleFonts.poppins(
      fontSize: 25, fontWeight: FontWeight.bold, color: headingColor);
  TextStyle hospitalNameStyle = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: textColor,
  );
}

class StringConstants {}

SizedBox buildHeight(height) => SizedBox(height: height);

SizedBox buildWidth(width) => SizedBox(width: width);

Color textColor = Color(0xff003455);
Color pageBgColor = Color(0xffe2fffe);
Color ctaBgColor = Color(0x80bbadff);
Color boxColor = const Color(0xff64B6AC);
Color headingColor = const Color(0xff216E39);
Color desBoxColor = const Color(0xff4ed5c9);

// TextStyle headingStyle() {
//   return TextStyle(
//       fontSize: 25,
//       fontWeight: FontWeight.bold,
//       color: Constants().headingColor);
// }

List categories = [
  "bed",
  "oxygen",
  "ambulance",
  "nurse",
  "doctor",
  "attender",
  "medicines",
  "paracetamol",
  "crocin",
];

class Hospital {
  final String hospitalName;
  final String address;
  final int avlBeds;
  final int avlOxy;
  final int avlAmb;
  final int avlNur;
  final int avlDoc;
  final int avlAtt;
  final int avlMed;
  final int avlPar;
  final int avlCro;
  final int contact;
  final int dist;

  Hospital(
      {required this.hospitalName,
      required this.address,
      required this.contact,
      required this.avlBeds,
      required this.avlOxy,
      required this.avlAmb,
      required this.avlNur,
      required this.avlDoc,
      required this.avlAtt,
      required this.avlMed,
      required this.avlPar,
      required this.avlCro,
      required this.dist});
}

List details = [
  Hospital(
    hospitalName: "Purvesh Dongarwar Mental Hospital",
    address:
        "Room 207, 5 star boys mental hospital, CRPF gate 3, Digdoh hills, Hingna Road. 440016",
    avlBeds: 1,
    avlOxy: 2,
    avlAmb: 3,
    avlNur: 4,
    avlDoc: 5,
    avlAtt: 6,
    avlMed: 7,
    avlPar: 8,
    avlCro: 9,
    contact: 9146477923,
    dist: 58,
  ),
  Hospital(
    hospitalName: "Jhode Multispeciality Hospital",
    address:
        "Room 206, 5 star unisex hospital, CRPF gate 3, Digdoh hills, Hingna Road. 440016 ",
    avlBeds: 10,
    avlOxy: 5,
    avlAmb: 3,
    avlNur: 2,
    avlDoc: 1,
    avlAtt: 9,
    avlMed: 8,
    avlPar: 7,
    avlCro: 6,
    contact: 7974781060,
    dist: 69,
  ),
  Hospital(
    hospitalName: "Purvesh Dongarwar Mental Hospital",
    address:
        "Room 207, 5 star boys mental hospital, CRPF gate 3, Digdoh hills, Hingna Road. 440016",
    avlBeds: 1,
    avlOxy: 2,
    avlAmb: 3,
    avlNur: 4,
    avlDoc: 5,
    avlAtt: 6,
    avlMed: 7,
    avlPar: 8,
    avlCro: 9,
    contact: 9146477923,
    dist: 58,
  ),
  Hospital(
    hospitalName: "Jhode Multispeciality Hospital",
    address:
        "Room 206, 5 star unisex hospital, CRPF gate 3, Digdoh hills, Hingna Road. 440016 ",
    avlBeds: 10,
    avlOxy: 5,
    avlAmb: 3,
    avlNur: 2,
    avlDoc: 1,
    avlAtt: 9,
    avlMed: 8,
    avlPar: 7,
    avlCro: 6,
    contact: 7974781060,
    dist: 69,
  ),
  Hospital(
    hospitalName: "Purvesh Dongarwar Mental Hospital",
    address:
        "Room 207, 5 star boys mental hospital, CRPF gate 3, Digdoh hills, Hingna Road. 440016",
    avlBeds: 1,
    avlOxy: 2,
    avlAmb: 3,
    avlNur: 4,
    avlDoc: 5,
    avlAtt: 6,
    avlMed: 7,
    avlPar: 8,
    avlCro: 9,
    contact: 9146477923,
    dist: 58,
  ),
  Hospital(
    hospitalName: "Jhode Multispeciality Hospital",
    address:
        "Room 206, 5 star unisex hospital, CRPF gate 3, Digdoh hills, Hingna Road. 440016 ",
    avlBeds: 10,
    avlOxy: 5,
    avlAmb: 3,
    avlNur: 2,
    avlDoc: 1,
    avlAtt: 9,
    avlMed: 8,
    avlPar: 7,
    avlCro: 6,
    contact: 7974781060,
    dist: 69,
  ),
  Hospital(
    hospitalName: "Purvesh Dongarwar Mental Hospital",
    address:
        "Room 207, 5 star boys mental hospital, CRPF gate 3, Digdoh hills, Hingna Road. 440016",
    avlBeds: 1,
    avlOxy: 2,
    avlAmb: 3,
    avlNur: 4,
    avlDoc: 5,
    avlAtt: 6,
    avlMed: 7,
    avlPar: 8,
    avlCro: 9,
    contact: 9146477923,
    dist: 58,
  ),
  Hospital(
    hospitalName: "Jhode Multispeciality Hospital",
    address:
        "Room 206, 5 star unisex hospital, CRPF gate 3, Digdoh hills, Hingna Road. 440016 ",
    avlBeds: 10,
    avlOxy: 5,
    avlAmb: 3,
    avlNur: 2,
    avlDoc: 1,
    avlAtt: 9,
    avlMed: 8,
    avlPar: 7,
    avlCro: 6,
    contact: 7974781060,
    dist: 69,
  ),
  Hospital(
    hospitalName: "Purvesh Dongarwar Mental Hospital",
    address:
        "Room 207, 5 star boys mental hospital, CRPF gate 3, Digdoh hills, Hingna Road. 440016",
    avlBeds: 1,
    avlOxy: 2,
    avlAmb: 3,
    avlNur: 4,
    avlDoc: 5,
    avlAtt: 6,
    avlMed: 7,
    avlPar: 8,
    avlCro: 9,
    contact: 9146477923,
    dist: 58,
  ),
  Hospital(
    hospitalName: "Jhode Multispeciality Hospital",
    address:
        "Room 206, 5 star unisex hospital, CRPF gate 3, Digdoh hills, Hingna Road. 440016 ",
    avlBeds: 10,
    avlOxy: 5,
    avlAmb: 3,
    avlNur: 2,
    avlDoc: 1,
    avlAtt: 9,
    avlMed: 8,
    avlPar: 7,
    avlCro: 6,
    contact: 7974781060,
    dist: 69,
  ),
  Hospital(
    hospitalName: "Purvesh Dongarwar Mental Hospital",
    address:
        "Room 207, 5 star boys mental hospital, CRPF gate 3, Digdoh hills, Hingna Road. 440016",
    avlBeds: 1,
    avlOxy: 2,
    avlAmb: 3,
    avlNur: 4,
    avlDoc: 5,
    avlAtt: 6,
    avlMed: 7,
    avlPar: 8,
    avlCro: 9,
    contact: 9146477923,
    dist: 58,
  ),
  Hospital(
    hospitalName: "Jhode Multispeciality Hospital",
    address:
        "Room 206, 5 star unisex hospital, CRPF gate 3, Digdoh hills, Hingna Road. 440016 ",
    avlBeds: 10,
    avlOxy: 5,
    avlAmb: 3,
    avlNur: 2,
    avlDoc: 1,
    avlAtt: 9,
    avlMed: 8,
    avlPar: 7,
    avlCro: 6,
    contact: 7974781060,
    dist: 69,
  ),
];
