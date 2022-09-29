import 'package:flutter/material.dart';
import 'package:soff_cricket_hybrid/views/_shared/constants/colors.dart';
import 'package:soff_cricket_hybrid/views/app/records/machine_hours/machine_hours_screen.dart';
import 'package:soff_cricket_hybrid/views/app/records/points/points_screen.dart';

class RecordsScreen extends StatefulWidget {
  const RecordsScreen({Key? key}) : super(key: key);

  @override
  State<RecordsScreen> createState() => _RecordsScreenState();
}

class _RecordsScreenState extends State<RecordsScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 1, vsync: this);

    return Container(
      color: kLayoutLightColor,
      child: Column(children: [
        Container(
          width: double.maxFinite,
          margin: const EdgeInsets.only(top: 10, left: 10),
          height: 30,
          child: Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
                labelColor: Colors.white,
                labelPadding: const EdgeInsets.only(left: 20, right: 20),
                isScrollable: true,
                unselectedLabelColor: kSecondaryColor,
                indicatorWeight: 0,
                indicator: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                controller: _tabController,
                tabs: const [
                  Tab(
                    text: 'Machine Hours',
                  ),
                  // Tab(
                  //   text: 'Points',
                  // ),
                ]),
          ),
        ),
        Expanded(
          child: TabBarView(
              controller: _tabController,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                MachineHoursScreen(),
                // PointsScreen()
              ]),
        ),
      ]),
    );
  }
}
