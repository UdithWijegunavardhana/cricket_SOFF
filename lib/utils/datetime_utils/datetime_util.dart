import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeUtil {

  static bool isTimeExpired(String time) {
    DateTime currentDateTime = DateTime.now();
    DateTime comparableTime = DateTime.parse(time);
    return currentDateTime.compareTo(comparableTime) > 0 ? true : false;
  }

  static DateTime addTimeToCurrentTime(int time) {
    DateTime currentDateTime = DateTime.now();
    DateTime timeUpdated = currentDateTime.add(Duration(minutes: time));
    return timeUpdated;
  }

  static String getMonthAbbriviation(int month){

    String monthAbbr = "";

    switch(month){
      case 1:
        monthAbbr = "JAN";
        break;
      case 2:
        monthAbbr = "FEB";
        break;
      case 3:
        monthAbbr = "MAR";
        break;
      case 4:
        monthAbbr = "APR";
        break;
      case 5:
        monthAbbr = "MAY";
        break;
      case 6:
        monthAbbr = "JUN";
        break;
      case 7:
        monthAbbr = "JUL";
        break;
      case 8:
        monthAbbr = "AUG";
        break;
      case 9:
        monthAbbr = "SEP";
        break;
      case 10:
        monthAbbr = "OCT";
        break;
      case 11:
        monthAbbr = "NOV";
        break;
      case 12:
        monthAbbr = "DEC";
        break;
    }
    return monthAbbr;
  }

  static DateTime timeOfDayToDateTime(DateTime date, TimeOfDay timeOfDay) {

    DateTime dateTime = DateTime(date.year, date.month,
        date.day, timeOfDay.hour, timeOfDay.minute);

    return dateTime;

  }

}