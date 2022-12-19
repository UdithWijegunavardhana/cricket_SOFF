import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soff_cricket_hybrid/routes/app_router.gr.dart';
import 'package:soff_cricket_hybrid/views/_shared/constants/colors.dart';
import 'package:soff_cricket_hybrid/views/_shared/loaders/event_page_loader.dart';
import 'package:soff_cricket_hybrid/views/_shared/widget/custom_appbar.dart';
import 'package:soff_cricket_hybrid/views/_shared/widget/custom_date_picker.dart';
import 'package:soff_cricket_hybrid/views/_shared/widget/custom_elevated_button.dart';
import 'package:soff_cricket_hybrid/views/_shared/widget/custom_time_picker.dart';
import 'package:soff_cricket_hybrid/views/app/bookings/booking_controller.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../_shared/constants/font_styles.dart';
import '../schedules/schedule_widget.dart';
import 'create_booking_overlay.dart';
import 'booking_requested_success_overlay.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key, required this.resourceId, required this.selectedDate}) : super(key: key);

  final DateTime selectedDate;
  final String resourceId;

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> with TickerProviderStateMixin {
  late final BookingController _bookingController;
  int tabSize = 0;
  int selectedTabId = 0;

  late final TabController _tabController = TabController(length: _bookingController.resources.length, vsync: this);

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
    final DateTime endTime = startTime.add(const Duration(minutes: 30));

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
          text: _bookingController.resources[i].description,
        ),
      );
    }
    return listings;
  }

  TextEditingController startTimeController = TextEditingController();
  TextEditingController endTimeController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  void _showOverlay(BuildContext context) {
    AutoRouter.of(context)
        .push(CreateBookingRoute(selectedDateTime: widget.selectedDate, resourceId: _bookingController.resources[selectedTabId].id))
        .then((value) => _bookingController.getResources());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Resource Category'),
      floatingActionButton: Obx(
        () => _bookingController.isLoading.isFalse
            ? FloatingActionButton(
                onPressed: () {
                  _showOverlay(context);
                },
                backgroundColor: kPrimaryColor,
                child: Icon(
                  Icons.add,
                  color: kLayoutLightColor,
                  size: 30,
                ),
              )
            : FloatingActionButton(
                onPressed: () {},
                backgroundColor: kPrimaryColor,
                child: Icon(
                  Icons.add,
                  color: kLayoutLightColor,
                  size: 30,
                ),
              ),
      ),
      body: Obx(
        () => _bookingController.isLoading.isFalse
            ? Container(
                color: kLayoutLightColor,
                child: Column(children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                        child: Text(
                          _bookingController.resources[0].resourceCategorieName,
                          style: kFontScreenTitle,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                    height: 30,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TabBar(
                          labelColor: Colors.white,
                          labelPadding: const EdgeInsets.only(left: 20, right: 20),
                          isScrollable: true,
                          unselectedLabelColor: kPrimaryColor,
                          indicatorWeight: 0,
                          indicator: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          controller: _tabController,
                          onTap: (value) => setState(() {
                                selectedTabId = value;
                              }),
                          tabs: _getResourceEventsTabs(_bookingController.resources)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: TabBarView(
                        controller: _tabController,
                        physics: const NeverScrollableScrollPhysics(),
                        children: _getResourceEventsTabView(_bookingController.resources)),
                  ),
                ]),
              )
            : const EventPageLoader(),
      ),
    );
  }
}
