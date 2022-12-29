import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

import '../../../utils/datetime_utils/datetime_util.dart';
import '../constants/colors.dart';
import 'custom_form_field.dart';

class CustomDatePicker extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String? title;
  final ValueChanged<DateTime> onValueChanged;

  const CustomDatePicker(
      {
        Key? key,
        required this.controller,
        required this.hintText,
        this.title,
        required this.onValueChanged
      }) : super(key: key);

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {

  void setDateValue(DateTime date) {
    setState(() {
      String formattedTime = DateFormat.yMEd().format(date);
      widget.controller.text = formattedTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final DateTime? selectedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime(DateTime.now().year + 2),
            builder: (context, child) {
              return Theme(
                  data: Theme.of(context).copyWith(
                    colorScheme: ColorScheme.light(
                      primary: kPrimaryColor,
                      onPrimary: kLayoutLightColor,
                      onSurface: kPrimaryColor,
                    ),
                    textButtonTheme: TextButtonThemeData(
                      style:
                          TextButton.styleFrom(foregroundColor: kPrimaryColor),
                    ),
                  ),
                  child: child!);
            });

        setDateValue(selectedDate!);

        widget.onValueChanged(selectedDate);

      },
      child: CustomFormField(
          isEnabled: false,
          textStyle: TextStyle(
            color: kFontLightColor,
            fontWeight: FontWeight.w500,
          ),
          formFieldTitle: widget.title,
          suffixIcon: Icons.calendar_today,
          suffixIconColor: kFontLightColor,
          hintText: widget.hintText,
          controller: widget.controller),
    );
  }
}
