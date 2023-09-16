import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.obscureText,
    required this.fontSize,
    required this.borderRadius,
    required this.borderColor,
    required this.borderWidth,
    required this.height,
    required this.width,
    required this.hintText,
    this.marginTop,
    this.marginBottom,
    this.marginLeft,
    this.marginRight,
    this.textColor,
    this.fillColor,
    this.filled,
    required this.suffixIcon,
    this.suffixIconColor,
    this.onSubmitted,
  });

  final TextEditingController controller;
  final bool obscureText;
  final Color? textColor;
  final double fontSize;
  final double borderRadius;
  final Color borderColor;
  final double borderWidth;
  final double height;
  final double width;
  final String hintText;
  final double? marginTop;
  final double? marginBottom;
  final double? marginLeft;
  final double? marginRight;
  final Color? fillColor;
  final bool? filled;
  final IconData suffixIcon;
  final Color? suffixIconColor;
  final Function(String)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(
        top: marginTop ?? 0.00,
        bottom: marginBottom ?? 0.00,
        left: marginLeft ?? 0.00,
        right: marginRight ?? 0.00,
      ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        style: TextStyle(
          fontSize: fontSize,
          color: textColor,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(
              color: borderColor,
              width: borderWidth,
            ),
          ),
          suffixIcon: Icon(
            suffixIcon,
            color: suffixIconColor,
          ),
          filled: filled,
          fillColor: fillColor,
        ),
        onSubmitted: onSubmitted??(p0){
          if (kDebugMode) {
            print('CustomTextField onSubmitted not implemented');
          }
        },
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
      ),
    );
  }
}
