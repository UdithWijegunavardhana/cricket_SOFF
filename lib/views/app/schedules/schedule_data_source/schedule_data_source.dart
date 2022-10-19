import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../../_shared/constants/colors.dart';

class ScheduleDataSource extends CalendarDataSource {

  ScheduleDataSource(List<dynamic> source, DateTime selectedDate) {

    List<Appointment> appointmentList = <Appointment>[];

    var _dateFormat = DateFormat('yyyy-MM-dd HH:mm');


    for (var item in source) {
      DateTime startTime = _dateFormat.parse('${selectedDate.year}-${selectedDate.month}-${selectedDate.day} ${item.startTime}');
      DateTime endTime = _dateFormat.parse('${selectedDate.year}-${selectedDate.month}-${selectedDate.day} ${item.endTime}');

      appointmentList.add(Appointment(
          startTime: startTime,
          endTime: endTime,
          subject: 'Booked ( ${item.startTime} - ${item.endTime} )',
          color: kSecondaryDarkColor)
      );

    }

    appointments = appointmentList;

    // appointments = getAppointments();
  }
}