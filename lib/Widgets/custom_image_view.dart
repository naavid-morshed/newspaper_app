import 'package:flutter/material.dart';

class CustomImageView extends StatelessWidget {
  const CustomImageView({
    super.key,
    required this.assetString,
    required this.containerShape,
    this.fit,
    this.height,
    this.width,
    this.borderRadius,
    this.border,
    this.paddingTop,
    this.paddingBottom,
    this.paddingLeft,
    this.paddingRight,
  });

  final String assetString;
  final BoxFit? fit;
  final double? height;
  final double? width;
  final BorderRadiusGeometry? borderRadius;
  final BoxBorder? border;
  final BoxShape containerShape;
  final double? paddingTop;
  final double? paddingBottom;
  final double? paddingLeft;
  final double? paddingRight;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: paddingTop ?? 0.00,
        bottom: paddingBottom ?? 0.00,
        left: paddingLeft ?? 0.00,
        right: paddingRight ?? 0.00,
      ),
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        border: border,
        shape: containerShape,
      ),
      child: Image.asset(
        assetString,
        fit: fit,
      ),
    );
  }
}
