import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:soff_cricket_hybrid/models/api_response/api_respone_model.dart';
import 'package:soff_cricket_hybrid/models/booking_resource/booking_resource_model.dart';
import 'package:soff_cricket_hybrid/models/booking_schedule/booking_schedule_model.dart';
import 'package:soff_cricket_hybrid/models/booking_timeslot/booking_timeslot_model.dart';
import 'package:soff_cricket_hybrid/models/resource/resource_model.dart';
import 'package:soff_cricket_hybrid/models/time_slots/time_slot_model.dart';
import 'package:soff_cricket_hybrid/models/user/user_model.dart';
import 'package:soff_cricket_hybrid/services/auth/user_manager_service.dart';
import 'package:soff_cricket_hybrid/services/schedule_service.dart';
import 'package:soff_cricket_hybrid/views/_shared/loaders/progress_loader.dart';
import 'package:soff_cricket_hybrid/views/_shared/widget/custom_dropdown.dart';
import 'package:soff_cricket_hybrid/views/_shared/widget/toast.dart';
import 'package:intl/intl.dart';
import '../../../utils/datetime_utils/datetime_util.dart';
import '../../_shared/constants/colors.dart';
import '../../_shared/constants/font_styles.dart';
import '../../_shared/widget/custom_date_picker.dart';
import '../../_shared/widget/custom_elevated_button.dart';
import '../../_shared/widget/custom_time_picker.dart';
import 'booking_requested_success_overlay.dart';

// class CreateBookingOverlay extends ModalRoute<void> {
//   @override
//   Duration get transitionDuration => Duration(milliseconds: 100);
//
//   @override
//   bool get opaque => false;
//
//   @override
//   bool get barrierDismissible => false;
//
//   @override
//   Color get barrierColor => Colors.black.withOpacity(0.5);
//
//   @override
//   String get barrierLabel => 'Barier';
//
//   @override
//   bool get maintainState => true;
//
//   DateTime dateTime;
//
//   CreateBookingOverlay({required this.dateTime});
//
//   @override
//   Widget buildPage(
//     BuildContext context,
//     Animation<double> animation,
//     Animation<double> secondaryAnimation,
//   ) {
//     return SafeArea(
//       child: Material(
//         type: MaterialType.canvas,
//         child: SafeArea(
//           child: _buildOverlayContent(context),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildOverlayContent(BuildContext context) {
//     TextEditingController startTimeController = TextEditingController();
//     TextEditingController endTimeController = TextEditingController();
//     TextEditingController descriptionController = TextEditingController();
//
//     String errorMessage = '';
//
//     return Container(
//       width: MediaQuery.of(context).size.width * 0.96,
//       height: 450,
//       padding: const EdgeInsets.all(20),
//       child: Form(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 IconButton(
//                     onPressed: () {
//                       Navigator.pop(context);
//                     },
//                     icon: Icon(
//                       Icons.close,
//                       color: kPrimaryColor,
//                     ))
//               ],
//             ),
//             Text(
//               "Request a booking",
//               style: kModalTitle,
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             CustomTimePicker(
//                 title: 'Start Time',
//                 hintText: 'Select Time',
//                 date: dateTime,
//                 controller: startTimeController),
//             const SizedBox(
//               height: 6,
//             ),
//             CustomTimePicker(
//                 title: 'End Time',
//                 hintText: 'Select Time',
//                 date: dateTime,
//                 controller: endTimeController),
//             const SizedBox(
//               height: 6,
//             ),
//             CustomDatePicker(
//                 title: 'Future Date ( Optional )',
//                 hintText: 'Select Future Date',
//                 controller: descriptionController),
//             const Spacer(),
//             CustomElevatedButton(
//                 width: 120,
//                 height: 50,
//                 buttonText: 'Request',
//                 onPressed: () {
//                   List<String> start = startTimeController.text.split(" ");
//                   List<String> end = endTimeController.text.split(" ");
//
//                   if (start[1] == 'PM' && end[1] == 'AM') {
//                     errorMessage =
//                         "Start Time Cannot be in future than ending time";
//                   }
//
//                   if (start[1] == end[1]) {
//                     if (int.parse(start[0].split(':')[0]) >
//                         int.parse(end[0].split(':')[0])) {
//                       errorMessage =
//                           "Start Time Cannot be in future than ending time";
//                     } else if (int.parse(start[0].split(':')[0]) ==
//                         int.parse(end[0].split(':')[0])) {
//                       if (int.parse(start[0].split(':')[1]) >
//                           int.parse(end[0].split(':')[1])) {
//                         errorMessage =
//                             "Start Time Cannot be in future than ending time";
//                       }
//                       errorMessage = "Start Time Cannot be Same as ending time";
//                     }
//                   }
//
//                   // double startTime = toDouble(myTime);
//                   // double endTime = toDouble(myTime);
//                   // Navigator.pop(context);
//                   // Navigator.of(context).push(BookingRequestedSuccessOverlay());
//                 },
//                 color: kPrimaryColor
//             ),
//             if (errorMessage != '') ...[
//               Text(errorMessage),
//             ]
//           ],
//         ),
//       ),
//     );
//   }
//
//   @override
//   Widget buildTransitions(BuildContext context, Animation<double> animation,
//       Animation<double> secondaryAnimation, Widget child) {
//     return FadeTransition(
//       opacity: animation,
//       child: ScaleTransition(
//         scale: animation,
//         child: child,
//       ),
//     );
//   }
// }

class CreateBookingScreen extends StatefulWidget {
  final DateTime selectedDateTime;
  final String resourceId;

  const CreateBookingScreen(
      {Key? key, required this.selectedDateTime, required this.resourceId})
      : super(key: key);

  @override
  State<CreateBookingScreen> createState() => _CreateBookingScreenState();
}

class _CreateBookingScreenState extends State<CreateBookingScreen> {
  TextEditingController startTimeController = TextEditingController();
  TextEditingController endTimeController = TextEditingController();
  TextEditingController futureDateController = TextEditingController();
  bool disableDropdown = true;
  String? errorMessage;
  String duration = '';

  DateTime currentDateTime = DateTime.now();
  late DateTime startDateTime;
  late DateTime endDateTime;
  String? futureDate;
  String? selectedDateTime;

  bool startTimeChanged = false;
  bool endTimeChanged = false;

  List<String> durationList = const <String>[
    '00:30',
    '01:00',
    '01:30',
    '02:00',
    '02:30'
  ];

  Map<String, dynamic> getDuration(String selectedDuration) {
    int hours = int.parse(selectedDuration.split(':')[0]);
    int minutes = int.parse(selectedDuration.split(':')[1]);

    Map<String, dynamic> duration = {'hours': hours, 'minutes': minutes};

    return duration;
  }

  @override
  void initState() {
    startDateTime = currentDateTime;
    endDateTime = currentDateTime;
    print(widget.resourceId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (startTimeChanged && endTimeChanged) {
      disableDropdown = true;
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Material(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {
                        AutoRouter.of(context).pop();
                      },
                      icon: Icon(
                        Icons.close,
                        color: kFontLightColor,
                      ))
                ],
              ),
              Expanded(
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.96,
                  height: 450,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Request a booking",
                          style: kModalTitle,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            Container(
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.only(top: 10),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    padding: const EdgeInsets.all(5),
                                    width: 72,
                                    height: 78,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .center,
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      children: [
                                        Text(
                                          widget.selectedDateTime.year
                                              .toString(),
                                          style: const TextStyle(
                                            color: Color.fromRGBO(
                                                97, 97, 97, 1),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Text(
                                            DateTimeUtil.getMonthAbbriviation(
                                                widget.selectedDateTime.month)
                                                .toLowerCase(),
                                            style: const TextStyle(
                                                color: Color.fromRGBO(
                                                    97, 97, 97, 1),
                                                fontSize: 14),
                                          ),
                                        ),
                                        Text(
                                          widget.selectedDateTime.day
                                              .toString(),
                                          style: const TextStyle(fontSize: 22,
                                              fontWeight: FontWeight.w600,
                                              color: Color.fromRGBO(
                                                  97, 97, 97, 1)),
                                        )
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                      color: kSecondaryColor,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                )),
                            const Spacer(),
                            CustomDropdown(
                              title: 'Duration',
                              hint: 'Select Duration',
                              disabled: disableDropdown,
                              onValueChanged: (value) {
                                Map<String,
                                    dynamic> formattedDuration = getDuration(
                                    value);

                                Duration duration = Duration(
                                    hours: formattedDuration['hours'],
                                    minutes: formattedDuration['minutes']);

                                if (startTimeChanged && !endTimeChanged) {
                                  setState(() {
                                    DateTime updatedTime = startDateTime.add(
                                        duration);
                                    endDateTime = updatedTime;
                                    String formattedTime = DateFormat.jm()
                                        .format(updatedTime);
                                    endTimeController.text = formattedTime;
                                  });
                                }

                                if (!startTimeChanged && endTimeChanged) {
                                  setState(() {
                                    DateTime updatedTime = endDateTime.subtract(
                                        duration);
                                    startDateTime = updatedTime;
                                    String formattedTime = DateFormat.jm()
                                        .format(updatedTime);
                                    startTimeController.text = formattedTime;
                                  });
                                }
                              },
                              items: durationList,
                              padding: const EdgeInsets.all(10),
                            ),
                          ],
                        ),
                        CustomTimePicker(
                            title: 'Start Time',
                            hintText: 'Select Time',
                            date: widget.selectedDateTime,
                            onValueChanged: (value) {
                              setState(() {
                                startTimeChanged = !startTimeChanged;
                                if (startTimeChanged && !endTimeChanged) {
                                  disableDropdown = !disableDropdown;
                                }
                                startDateTime = value;
                              });
                            },
                            controller: startTimeController),
                        const SizedBox(
                          height: 6,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        CustomTimePicker(
                            title: 'End Time',
                            hintText: 'Select Time',
                            date: widget.selectedDateTime,
                            onValueChanged: (value) {
                              setState(() {
                                endTimeChanged = !endTimeChanged;
                                if (!startTimeChanged && endTimeChanged) {
                                  disableDropdown = !disableDropdown;
                                }
                                endDateTime = value;
                              });
                            },
                            controller: endTimeController),
                        const SizedBox(
                          height: 6,
                        ),
                        CustomDatePicker(title: 'Future Date ( Optional )',
                            hintText: 'Select Future Date',
                            onValueChanged: (value) {
                              setState(() {
                                futureDate = DateTimeUtil.formatDateTime("yyyy-MM-dd", value);
                              });
                            },
                            controller: futureDateController),
                        const Spacer(),
                        if (errorMessage != null) ...[
                          Container(
                            height: 40,
                            width: double.infinity,
                            padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  child: Text(
                                    errorMessage ?? '',
                                    style: TextStyle(color: kLayoutLightColor),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        errorMessage = null;
                                      });
                                    },
                                    icon: Icon(
                                        Icons.cancel, color: kLayoutLightColor))
                              ],
                            ),
                            decoration: BoxDecoration(color: kWarningColor,
                                borderRadius: BorderRadius.circular(10)),
                          )
                        ],
                        const Spacer(),
                        CustomElevatedButton(
                            width: 120,
                            height: 50,
                            buttonText: 'Request',
                            onPressed: () async {
                              String? errorType;

                              if (startTimeController.text.isEmpty &&
                                  endTimeController.text.isEmpty) {
                                errorType =
                                "Start time and End time must be selected";
                              }

                              if (startTimeController.text.isEmpty &&
                                  endTimeController.text.isNotEmpty) {
                                errorType = "Start time must be selected";
                              }

                              if (endTimeController.text.isEmpty &&
                                  startTimeController.text.isNotEmpty) {
                                errorType = "End time must be selected";
                              }

                              if (startTimeController.text.isNotEmpty &&
                                  endTimeController.text.isNotEmpty) {
                                List<String> start = startTimeController.text
                                    .split(" ");
                                List<String> end = endTimeController.text.split(
                                    " ");

                                if (start[1] == 'PM' && end[1] == 'AM') {
                                  errorType =
                                  "Start time cannot be in future than ending time";
                                }

                                if (startDateTime.isAfter(endDateTime)) {
                                  errorType =
                                  "Start time cannot be in future than ending time";
                                }

                                if (startDateTime.isAtSameMomentAs(
                                    endDateTime)) {
                                  errorType =
                                  "Start time cannot be same as ending time";
                                }

                                // if (start[1] == end[1]) {
                                //   if (int.parse(start[0].split(':')[0]) > int.parse(end[0].split(':')[0])) {
                                //     errorType = "Start time cannot be in future than ending time";
                                //   } else if (int.parse(start[0].split(':')[0]) == int.parse(end[0].split(':')[0])) {
                                //     if (int.parse(start[0].split(':')[1]) > int.parse(end[0].split(':')[1])) {
                                //       errorType = "Start time cannot be in future than ending time";
                                //     } else {
                                //       errorType = "Start time cannot be same as ending time";
                                //     }
                                //   }
                                // }

                                // double startTime = toDouble(myTime);
                                // double endTime = toDouble(myTime);
                                // Navigator.pop(context);
                                // Navigator.of(context).push(BookingRequestedSuccessOverlay());
                              }

                              setState(() {
                                errorMessage = errorType;
                              });
                              if (errorType == null) {

                                selectedDateTime = DateTimeUtil.formatDateTime("yyyy-MM-dd", widget.selectedDateTime);

                                UserManager _userManager = UserManager();
                                UserModel _user = await _userManager
                                    .getUserData();
                                Navigator.of(context).push(ProgressLoader());

                                BookingScheduleModel bookingSchedule = BookingScheduleModel(
                                    actionStatus: BookingActionStatus.Save,
                                    date: futureDate ?? selectedDateTime,
                                    rescheduleDate: "",
                                    resources: [BookingResourceModel(
                                      id: widget.resourceId,
                                      timeslots: [
                                        BookingTimeslotModel(
                                          startTime: DateFormat.Hm().format(
                                              startDateTime),
                                          endTime: DateFormat.Hm().format(
                                              endDateTime),
                                          customerId: _user.id!,
                                          status: BookingTimeSlotStatus.Requested,
                                          comment: "",
                                          isReschedule: "false",
                                          isSendEmail: BookingEmailStatus.SendEmail,
                                          createdDateTime: DateFormat(
                                              'yyyy-MM-dd hh:mm:ss').format(
                                              DateTime.now()),
                                          subResourceList: [],
                                          amount: ""
                                        )
                                      ],
                                    )
                                    ]
                                );

                                ApiResponseModel res = await ScheduleService()
                                    .saveSchedule(bookingSchedule);
                                Navigator.pop(context);
                                if (res.status) {
                                  Navigator.of(context).push(
                                      BookingRequestedSuccessOverlay());
                                } else {
                                  toastBottom(
                                      "Something went wrong, Please try again later");
                                }
                              }
                            },
                            color: kPrimaryColor)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
