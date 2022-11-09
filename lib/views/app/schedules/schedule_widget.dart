import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:soff_cricket_hybrid/views/_shared/constants/colors.dart';
import 'package:soff_cricket_hybrid/views/app/schedules/schedule_data_source/schedule_data_source.dart';
import 'package:soff_cricket_hybrid/views/app/schedules/schedule_widget_controller.dart';


import 'package:syncfusion_flutter_calendar/calendar.dart';
import '../../_shared/loaders/event_calender_loader.dart';

class EventScheduleWidget extends StatefulWidget {
  final Color todayHighlightColor;
  final String resourceTypeId;
  final DateTime selectedDate;

  const EventScheduleWidget({Key? key,
    required this.todayHighlightColor,
    required this.resourceTypeId,
    required this.selectedDate})
      : super(key: key);

  @override
  State<EventScheduleWidget> createState() => _EventScheduleWidgetState();
}

class _EventScheduleWidgetState extends State<EventScheduleWidget> {
  late final ScheduleWidgetController _scheduleWidgetController;

  late DateTime selectedTime;

  @override
  void didChangeDependencies() {
    _scheduleWidgetController =
        Get.put(ScheduleWidgetController(selectedDate: widget.selectedDate));
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _scheduleWidgetController.getResources(widget.resourceTypeId, widget.selectedDate);
    });

    super.didChangeDependencies();
  }

  // @override
  // void dispose() {
  //   Get.delete<ScheduleWidgetController>();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    if (mounted) {
      return Obx(
            () =>
        _scheduleWidgetController.isLoading.isFalse
            ? Container(
          margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: SfCalendar(
            view: CalendarView.day,
            todayHighlightColor: kPrimaryColor,
            initialDisplayDate: widget.selectedDate,
            allowDragAndDrop: false,
            allowViewNavigation: false,
            initialSelectedDate: widget.selectedDate,
            viewNavigationMode: ViewNavigationMode.none,
            // onViewChanged: (ViewChangedDetails viewChangedDetails) {
            //   SchedulerBinding.instance.addPostFrameCallback((duration) {
            //     print('** Date **');
            //     print(_scheduleWidgetController.selectedDate);
            //     if (DateFormat('yyyy-MM-dd').format(
            //         viewChangedDetails.visibleDates[0]) !=
            //         DateFormat('yyyy-MM-dd').format(widget.selectedDate)) {
            //       _scheduleWidgetController.getResources(widget.resourceTypeId, viewChangedDetails.visibleDates[0]);
            //     }
            //   });
            // },
            appointmentTextStyle: TextStyle(
              fontSize: 14,
              color: kPrimaryColor,
            ),
            dataSource: _scheduleWidgetController.schedules.isNotEmpty
                ? ScheduleDataSource(_scheduleWidgetController.schedules,
                widget.selectedDate)
                : ScheduleDataSource([], widget.selectedDate),
            appointmentBuilder: (BuildContext context, CalendarAppointmentDetails details) {

              Appointment appointment = details.appointments.first;

              return Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text( appointment.subject, style: const TextStyle(
                      fontWeight: FontWeight.w500
                    )),
                  ],
                ),
                decoration: BoxDecoration(
                  color: appointment.color,
                  borderRadius: BorderRadius.circular(6)
                ),
              );

            },
            selectionDecoration: BoxDecoration(
              border: Border.all(color: Colors.transparent, width: 0)
            ),
          ),
        )
            : const EventCalenderLoader(),
      );
    } else {
      return const EventCalenderLoader();
    }
  }
}
