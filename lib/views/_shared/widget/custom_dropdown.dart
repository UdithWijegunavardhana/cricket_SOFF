import 'package:flutter/material.dart';
import 'package:soff_cricket_hybrid/views/_shared/constants/colors.dart';

class CustomDropdown extends StatefulWidget {
  final EdgeInsetsGeometry? margin;
  final double? marginLeft;
  final double? marginTop;
  final double? marginRight;
  final double? marginBottom;
  final EdgeInsetsGeometry? padding;
  final double? paddingLeft;
  final double? paddingTop;
  final double? paddingRight;
  final double? paddingBottom;
  final String? title;
  final List<String> items;
  final ValueChanged<String> onValueChanged;
  final bool? disabled;
  final String hint;

  const CustomDropdown(
      {Key? key,
      this.margin,
      this.marginLeft,
      this.marginTop,
      this.marginRight,
      this.marginBottom,
      this.padding,
      this.paddingLeft,
      this.paddingTop,
      this.paddingRight,
      this.paddingBottom,
      this.title,
      required this.items,
      required this.onValueChanged,
      this.disabled, required this.hint})
      : super(key: key);

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        (widget.title != null)
            ? Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top:10, bottom: 10),
                    child: Text(
                      widget.title!,
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              )
            : const SizedBox(height: 0, width: 0),
        IgnorePointer(
          ignoring: widget.disabled ?? false,
          child: Container(
            margin: widget.margin ??
                EdgeInsets.fromLTRB(
                  widget.marginLeft ?? 0,
                  widget.marginTop ?? 0,
                  widget.marginRight ?? 0,
                  widget.marginBottom ?? 0,
                ),
            padding: widget.padding ??
                EdgeInsets.fromLTRB(
                  widget.paddingLeft ?? 0,
                  widget.paddingTop ?? 0,
                  widget.paddingRight ?? 0,
                  widget.paddingBottom ?? 0,
                ),
            child: DropdownButton<String>(
              value: dropdownValue,
              hint: Text(widget.hint, style: TextStyle(color: kFontLightColor),),
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: kFontLightColor,
              ),
              elevation: 16,
              style: TextStyle(color: kPrimaryColor),
              underline: Container(
                height: 0,
                color: Colors.transparent,
              ),
              onChanged: (String? value) {
                setState(() {
                  dropdownValue = value!;
                });
                widget.onValueChanged(value!);
              },
              items: widget.items.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(
                        color: kFontLightColor, fontWeight: FontWeight.w500),
                  ),
                );
              }).toList(),
            ),
            decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ],
    );
  }
}
