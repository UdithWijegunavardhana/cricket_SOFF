import 'dart:ui';

import 'package:intl/intl.dart';
import 'package:soff_cricket_hybrid/models/time_slots/time_slot_model.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../../_shared/constants/colors.dart';

class ScheduleDataSource extends CalendarDataSource {

  Color getColorByStatus(String status) {

    Color color;

    switch(status){
      case "REQUESTED":
        color = kRequestedColor;
        break;
      case "PENDING":
        color = kLightPurpleColor;
        break;
      case "FIXED":
        color = kLightGreenColor;
        break;
      case "CONFIRMED":
        color = kLightBlueColor;
        break;
      default :
        color = kSecondaryColor;
        break;
    }

    return color;

  }

  ScheduleDataSource(List<dynamic> source, DateTime selectedDate) {

    List<Appointment> appointmentList = <Appointment>[];

    var _dateFormat = DateFormat('yyyy-MM-dd HH:mm');


    for (TimeSlotModel item in source) {

      DateTime startTime = _dateFormat.parse('${selectedDate.year}-${selectedDate.month}-${selectedDate.day} ${item.startTime}');
      DateTime endTime = _dateFormat.parse('${selectedDate.year}-${selectedDate.month}-${selectedDate.day} ${item.endTime}');

      Color backgroundColor = getColorByStatus(item.status ?? "");

      appointmentList.add(Appointment(
          startTime: startTime,
          endTime: endTime,
          subject: 'Start : ${item.startTime} - End ${item.endTime}  [Not Available]',
          color: backgroundColor)
      );

    }

    appointments = appointmentList;

    // appointments = getAppointments();
  }
}