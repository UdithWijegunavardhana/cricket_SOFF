import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soff_cricket_hybrid/views/_shared/widget/input_validator.dart';

import '../constants/colors.dart';

class CustomFormField extends StatelessWidget {
  final String hintText;
  final String? formFieldTitle;
  final bool? isFilled;
  final Color? fillColor;
  final TextEditingController controller;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
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
  final Function(String?)? onChange;
  final TextInputType inputType;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final bool? autoFocus;
  final int? maxLines;
  final bool? isEnabled;
  final VoidCallback? onTap;
  final TextStyle? textStyle;
  final Color? suffixIconColor;

  const CustomFormField(
      {Key? key,
      required this.hintText,
      this.formFieldTitle,
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
      this.focusNode,
      this.validator,
      this.inputFormatters,
      this.autoFocus = false,
      this.maxLines,
      this.prefixIcon,
      this.isEnabled = true,
      this.onTap,
      this.textStyle,
      this.suffixIconColor
      })
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
          (formFieldTitle != null)
              ? Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        formFieldTitle!,
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                )
              : Container(height: 0, width: 0),
          TextFormField(
            cursorColor: kPrimaryColor,
            enabled: isEnabled,
            controller: controller,
            style: textStyle,
            obscureText: obSecureText,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            autofocus: false,
            inputFormatters: inputFormatters,
            keyboardType: inputType,
            maxLines: maxLines,
            onTap: onTap,
            decoration: InputDecoration(
              filled: true,
              fillColor: kSecondaryColor,
              suffixIcon: Icon(
                suffixIcon,
                color: suffixIconColor ?? kPrimaryColor,
              ),
              prefixIcon: Icon(
                  prefixIcon,
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
            onChanged: onChange,
            validator: validator,
          ),
        ],
      ),
    );
  }
}
