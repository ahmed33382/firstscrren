import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final double? fontsize;
  final FontWeight? fontweight;
  final String? fontfamily;
  final Color? color;
  final Color? backgroundColor;
  final double? wordSpacing;
  final void Function()? onTap;
  final String? text;

  const TextWidget({
    super.key,
    this.fontsize,
    this.fontweight,
    this.fontfamily,
    this.color,
    this.backgroundColor,
    this.wordSpacing,
    this.onTap,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text ?? '',

        style: TextStyle(
          fontSize: fontsize,
          fontWeight: fontweight,
          fontFamily: fontfamily,
          color: color,
          backgroundColor: backgroundColor,
          wordSpacing: wordSpacing,
        ),
      ),
    );
  }
}
