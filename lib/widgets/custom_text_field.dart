import 'package:flutter/material.dart';
import '../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key ,
    this.hintText,
     this.onTap,
    this.readOnly = false,
    this.textAlign = TextAlign.left,
     this.suffixIcon,
    required this.textStyle,
    this.prefixIcon,
    this.obscureText = false,
    this.fillColor = kTextColor
  });
    final String? hintText;
    final Function()? onTap;
    final bool readOnly;
    final TextAlign textAlign;
    final Icon? suffixIcon;
    final Icon ? prefixIcon;
    final  Color textStyle;
    final bool obscureText;
    final Color fillColor;
  @override
  Widget build(BuildContext context) {
    return  TextField(
      obscureText: obscureText,
      readOnly: readOnly,
      onTap: onTap,
      textAlign: textAlign,
      decoration: InputDecoration(
       filled: true,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        fillColor: fillColor,
        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15,),
       hintText: hintText,
        hintStyle:  TextStyle(
            color: textStyle
            ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none
        ),
      ),
    );
  }
}
