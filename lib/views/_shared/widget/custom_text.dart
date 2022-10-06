import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomText extends StatelessWidget {

  final String text;
  final EdgeInsetsGeometry? margin;
  final double marginLeft;
  final double marginRight;
  final double marginBottom;
  final double marginTop;
  final EdgeInsetsGeometry? padding;
  final double paddingLeft;
  final double paddingRight;
  final double paddingBottom;
  final double paddingTop;
  final TextStyle? style;
  final double? textHeight;
  final TextAlign? textAlign;

  const CustomText({
    Key? key,
    required this.text,
    this.margin,
    this.marginLeft = 0,
    this.marginRight = 0,
    this.marginBottom = 0,
    this.marginTop = 0,
    this.padding,
    this.paddingLeft = 0,
    this.paddingRight = 0,
    this.paddingBottom = 0,
    this.paddingTop = 0,
    this.style,
    this.textHeight = 0,
    this.textAlign = TextAlign.start
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: margin ??
            EdgeInsets.fromLTRB(
              marginLeft,
              marginTop,
              marginRight,
              marginBottom,
            ),
        padding: padding ??
            EdgeInsets.fromLTRB(
              paddingLeft,
              paddingTop,
              paddingRight,
              paddingBottom,
            ),
        child: Text(
            text,
            textAlign: textAlign,
            style: style ?? TextStyle(
              height: textHeight,
              color: kPrimaryColor
            ),
        )
    );
  }
}
