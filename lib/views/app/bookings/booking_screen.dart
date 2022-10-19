import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soff_cricket_hybrid/models/resource/resource_model.dart';
import 'package:soff_cricket_hybrid/views/_shared/constants/colors.dart';
import 'package:soff_cricket_hybrid/views/_shared/loaders/event_page_loader.dart';
import 'package:soff_cricket_hybrid/views/app/bookings/booking_controller.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../_shared/constants/font_styles.dart';
import '../schedules/schedule_widget.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key, required this.resourceId, required this.selectedDate}) : super(key: key);

  final DateTime selectedDate;
  final String resourceId;

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen>
    with TickerProviderStateMixin {
  late final BookingController _bookingController;
  int tabSize = 0;

  late final TabController _tabController = TabController(
      length: _bookingController.resources.length,
      vsync: this);

  @override
  void initState() {
    _bookingController = Get.put(BookingController(widget.resourceId));
    super.initState();
  }

  @override
  void dispose() {
    Get.delete<BookingController>();
    super.dispose();
  }

  List<Appointment> getAppointments() {
    List<Appointment> meetings = <Appointment>[];

    final DateTime today = DateTime.now();
    final DateTime startTime = DateTime(today.year, today.month, today.day, 9, 0, 0);
    final DateTime endTime = startTime.add(const Duration( minutes: 30 ));

    meetings.add(Appointment(startTime: startTime, endTime: endTime, subject: 'Booked ( 9.00AM - 11.00AM )', color: kPrimaryColor));

    return meetings;
  }

  List<Widget> _getResourceEventsTabView(List<dynamic> resources) {
    List<Widget> listings = <Widget>[];
    int i = 0;
    for (i = 0; i < resources.length; i++) {
      listings.add(EventScheduleWidget(
        todayHighlightColor: kPrimaryColor,
        // bookings: getAppointments(),
        selectedDate: widget.selectedDate,
        resourceTypeId: _bookingController.resources[i].id,
      ));
    }
    return listings;
  }

  List<Widget> _getResourceEventsTabs(List<dynamic> resources) {
    List<Widget> listings = <Widget>[];
    int i = 0;
    for (i = 0; i < resources.length; i++) {
      listings.add(
        Tab(
          text: _bookingController.resources[i].code,
        ),
      );
    }
    return listings;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(
          () => _bookingController.isLoading.isFalse
              ? Container(
                  color: kLayoutLightColor,
                  child: Column(children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            _bookingController.resources[0].resourceCategorieName,
                            style: kFontScreenTitle,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: double.maxFinite,
                      margin: const EdgeInsets.only(top: 10, left: 10),
                      height: 30,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: TabBar(
                            labelColor: Colors.white,
                            labelPadding:
                                const EdgeInsets.only(left: 20, right: 20),
                            isScrollable: true,
                            unselectedLabelColor: kPrimaryColor,
                            indicatorWeight: 0,
                            indicator: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            controller: _tabController,
                            tabs: _getResourceEventsTabs(
                                _bookingController.resources)
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: TabBarView(
                          controller: _tabController,
                          physics: const NeverScrollableScrollPhysics(),
                          children: _getResourceEventsTabView(
                              _bookingController.resources)
                      ),
                    ),
                    // Container(
                    //   child: Container(
                    //     width: MediaQuery.of(context).size.width,
                    //     height: 60,
                    //     margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    //     child: ElevatedButton(
                    //       child: Row(
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         children: [
                    //           Icon(Icons.call, color: kLayoutLightColor,),
                    //           const SizedBox(width: 20,),
                    //           Text('Book Now', style: TextStyle(color: kLayoutLightColor, fontWeight: FontWeight.w500),),
                    //         ],
                    //       ),
                    //       onPressed: () => Navigator.pop(context),
                    //       style: ButtonStyle(
                    //         elevation: MaterialStateProperty.all<double>(0),
                    //         backgroundColor:
                    //         MaterialStateProperty.all<Color>(kPrimaryColor),
                    //         shape: MaterialStateProperty.all(
                    //             RoundedRectangleBorder(
                    //                 borderRadius: BorderRadius.circular(0))),
                    //       ),
                    //     ),
                    //   ),
                    //   decoration: BoxDecoration(
                    //       color: kLayoutLightColor,
                    //     boxShadow: [
                    //       BoxShadow(
                    //         color: kPrimaryColor,
                    //         blurRadius: 2.0,
                    //         spreadRadius: 0.0,
                    //         offset: const Offset(2.0, 2.0),
                    //       )
                    //     ],
                    //   ),
                    // )
                  ]),
                )
              : const EventPageLoader(),
        ),
      ),
    );
  }
}
