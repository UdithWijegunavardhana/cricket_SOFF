import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomFormField extends StatelessWidget {
  final String hintText;
  final String? formTitle;
  final bool? isFilled;
  final Color? fillColor;
  final TextEditingController controller;
  final IconData? suffixIcon;
  final String? errorText;
  final bool obSecureText;
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
  final Function? onChange;
  final TextInputType inputType;
  final FocusNode? focusNode;

  const CustomFormField(
      {Key? key,
      required this.hintText,
      this.formTitle,
      this.inputType = TextInputType.text,
      this.isFilled = true,
      this.fillColor,
      required this.controller,
      this.suffixIcon,
      this.errorText,
      this.obSecureText = false,
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
      this.onChange,
      this.focusNode})
      : super(key: key);

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
      child: Column(
        children: [
          (formTitle != null)
              ? Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        formTitle!,
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                )
              : Container(height: 0, width: 0),
          TextFormField(
            cursorColor: kPrimaryColor,
            controller: controller,
            obscureText: obSecureText,
            autofocus: false,
            decoration: InputDecoration(
              filled: true,
              fillColor: kSecondaryColor,
              suffixIcon: Icon(
                suffixIcon,
                color: kPrimaryColor,
              ),
              hintText: hintText,
              contentPadding: const EdgeInsets.fromLTRB(20, 24, 20, 24),
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: kSecondaryColor,
                  width: 1,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
            onChanged: (value) {
              print(value);
            },
          ),
        ],
      ),
    );
  }
}
