import 'package:flutter/material.dart';

class CustomIcons extends StatelessWidget {
  final double? size;
  final double? fill;
  final double? weight;
  final double? grade;
  final double? opticalsize;
  final Color? color;
  final List<Shadow>? shadows;
  final void Function()? onTap;
  final IconData? icons;
  const CustomIcons({
    super.key,
    this.size,
    this.fill,
    this.weight,
    this.grade,
    this.opticalsize,
    this.color,
    this.shadows,
    this.onTap,
    this.icons,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        icons,
        size: size,
        fill: fill,
        weight: weight,
        grade: grade,
        opticalSize: opticalsize,
        color: color,
        shadows: [],
      ),
    );
  }
}
