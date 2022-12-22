import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:soff_cricket_hybrid/utils/datetime_utils/datetime_util.dart';
import 'package:soff_cricket_hybrid/views/_shared/constants/colors.dart';
import 'package:soff_cricket_hybrid/views/_shared/widget/custom_form_field.dart';

class CustomTimePicker extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String? title;
  final DateTime date;
  final ValueChanged<DateTime> onValueChanged;

  const CustomTimePicker(
      {Key? key,
      required this.controller,
      required this.hintText,
      required this.title,
      required this.date,
      required this.onValueChanged})
      : super(key: key);

  @override
  State<CustomTimePicker> createState() => _CustomTimePickerState();
}

class _CustomTimePickerState extends State<CustomTimePicker> {
  void setTimeValue(TimeOfDay time) {
    setState(() {
      // DateTime dateTime = DateTime(widget.date.year, widget.date.month,
      //     widget.date.day, time.hour, time.minute);

      DateTime dateTime = DateTimeUtil.timeOfDayToDateTime(widget.date, time);

      String formattedTime = DateFormat.jm().format(dateTime);
      widget.controller.text = formattedTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        TimeOfDay? selectedTime = await showTimePicker(
            context: context,
            initialEntryMode: TimePickerEntryMode.dialOnly,
            hourLabelText: widget.title,
            initialTime: TimeOfDay.now(),
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

        setTimeValue(selectedTime!);

        var dateTime = DateTimeUtil.timeOfDayToDateTime(widget.date, selectedTime);

        widget.onValueChanged(dateTime);
      },
      child: CustomFormField(
          isEnabled: false,
          textStyle: TextStyle(
            color: kFontLightColor,
            fontWeight: FontWeight.w500,
          ),
          formFieldTitle: widget.title,
          suffixIcon: Icons.timer_sharp,
          suffixIconColor: kFontLightColor,
          hintText: widget.hintText,
          controller: widget.controller),
    );
  }
}
