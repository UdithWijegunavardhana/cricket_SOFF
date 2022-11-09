import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomElevatedButton extends StatefulWidget {

  final double width;
  final double height;
  final String buttonText;
  final VoidCallback? onPressed;
  final Color color;
  final double? borderRadius;
  const CustomElevatedButton({Key? key, required this.width, required this.height, required this.buttonText, required this.onPressed, required this.color, this.borderRadius }) : super(key: key);

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 20),
      child: ElevatedButton(
        child: Text(widget.buttonText, style: TextStyle(color: kLayoutLightColor, fontWeight: FontWeight.w500),),
        onPressed: widget.onPressed,
        style: ButtonStyle(
          elevation: MaterialStateProperty.all<double>(0),
          backgroundColor:
          MaterialStateProperty.all<Color>(kPrimaryColor),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular( (widget.borderRadius ?? widget.height ) / 2 ))),
        ),
      ),
    );
  }
}
