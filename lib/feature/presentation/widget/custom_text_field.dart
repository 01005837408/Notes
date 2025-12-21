import 'package:flutter/material.dart';
import 'package:hive_app/core/constant.dart';
import 'package:hive_app/core/helper/check_text_arabic.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key, required this.hintText, this.maxLines ,  this.onchanged});

  final String hintText;
  final int? maxLines;
  // final void Function(String?)? onSaved;
  final void Function(String)? onchanged;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  TextEditingController controller = TextEditingController();
  bool isArabicText = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textDirection: isArabic( controller.text) ? TextDirection.rtl : TextDirection.ltr,
      onChanged: (value){
         setState(() {
          isArabicText = isArabic(value);
        });
      },
      controller: controller,
      textAlign: isArabic( controller.text) ? TextAlign.right : TextAlign.left,
      onSaved: (value){

      },

      validator: (value){
        if(value?.isEmpty ?? true){
          return 'Field is required';
        }
        return null;
      },
      cursorColor: kPrimaryColor,
      maxLines: widget.maxLines ?? 1,
      decoration: InputDecoration(
        
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
        border: buildBorder(),
        hintText: widget.hintText,
        
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
