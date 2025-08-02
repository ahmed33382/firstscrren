import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;
  final BorderRadius? borderradius;
  final List<BoxShadow>? boxshadow;
  final double? toppadding;
  final double? bottompadding;
  final double? leftpadding;
  final double? rightpadding;
  final double? topmargin;
  final double? bottommargin;
  final double? leftmargin;
  final double? rightmargin;
  final Widget? child;
  final Function()? onTap;
  const ContainerWidget({
    super.key,
    this.height,
    this.width,
    this.color,
    this.borderradius,
    this.boxshadow,
    this.toppadding,
    this.bottompadding,
    this.leftpadding,
    this.rightpadding,
    this.topmargin,
    this.bottommargin,
    this.leftmargin,
    this.rightmargin,
    this.child,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderradius,
          boxShadow: boxshadow,
        ),
        padding: EdgeInsets.only(
          top: toppadding ?? 0,
          bottom: bottompadding ?? 0,
          left: leftpadding ?? 0,
          right: rightpadding ?? 0,
        ),
        margin: EdgeInsets.only(
          top: topmargin ?? 0,
          bottom: bottommargin ?? 0,
          left: leftmargin ?? 0,
          right: rightmargin ?? 0,
        ),
        child: child,
      ),
    );
  }
}
