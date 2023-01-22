// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../constants/constants.dart';
import 'custom_textfield.dart';

class RegistrationField extends StatelessWidget {
  TextEditingController controller;
  String hintText;
  double height;
  TextInputType type;
  RegistrationField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.height = 50.0,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: boxColor, width: 2)),
      child: CustomTextField(
          textInputType: type,
          obscureText: false,
          hintText: hintText,
          icon: null,
          controller: controller),
    );
  }
}
