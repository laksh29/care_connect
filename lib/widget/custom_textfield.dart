// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:care_connect/constants/constants.dart';

class CustomTextField extends StatelessWidget {
  TextInputType textInputType;
  bool obscureText;
  String hintText;
  IconData? icon;
  CustomTextField({
    Key? key,
    required this.textInputType,
    required this.obscureText,
    required this.hintText,
    required this.icon,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: textInputType,
      enableSuggestions: false,
      autocorrect: false,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(8.0),
        prefixIcon: Icon(
          icon,
          size: 20,
          color: textColor,
        ),
        prefixIconConstraints: const BoxConstraints(
          maxHeight: 17,
          maxWidth: 25,
        ),
        border: InputBorder.none,
        hintText: hintText,
        hintStyle: StyleConstants().loginStyle,
      ),
    );
  }
}
