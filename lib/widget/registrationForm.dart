import 'package:flutter/material.dart';

import '../constants/constants.dart';
import 'custom_textfield.dart';

class RegistrationField extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  String hintText;
  double height;
  TextInputType type;
  RegistrationField(
      {super.key,
      required this.hintText,
      this.height = 50.0,
      required this.type});

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
