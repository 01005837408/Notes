import 'package:flutter/material.dart';
import 'package:hive_app/core/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
        border: buildBorder(),
        hintText: 'Title',
        hintStyle: TextStyle(color: kPrimaryColor)
      ),
    );
  }

  OutlineInputBorder buildBorder([Color? color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
        borderSide: BorderSide(
          color: color ?? Colors.white,
          width: 2,
        ));
  }
}
