import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soff_cricket_hybrid/views/_shared/constants/colors.dart';
import 'package:soff_cricket_hybrid/views/_shared/widget/data_table_row.dart';
import 'package:soff_cricket_hybrid/views/app/records/points/points_controller.dart';

class PointsScreen extends StatefulWidget {
  const PointsScreen({Key? key}) : super(key: key);

  @override
  State<PointsScreen> createState() => _PointsScreenState();
}

class _PointsScreenState extends State<PointsScreen> {

  final PointsController _pointsController = Get.put(PointsController());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kLayoutLightColor,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20),
                child: const Text(
                  "SOFF Cricket Points",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                ),
              ),
              Obx(
              ()=> Container(
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        _pointsController.totalPoints.value.toString(),
                        style:
                            const TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                      ),
                      const Text("Total Points")
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                ),
              )
            ],
          ),
          Expanded(
            child: Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                        child: const Text(
                          "Points Summary",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Expanded(
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text('Date'))),
                          Expanded(
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text('Purpose'))),
                          Expanded(
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text('Points'))),
                        ],
                      ),
                    ),
                    Obx(
                      ()=> Expanded(
                        child: GlowingOverscrollIndicator(
                          axisDirection: AxisDirection.down,
                          color: kShadeColor,
                          child: ListView.builder(
                            physics: const ScrollPhysics(),
                            itemCount: _pointsController.points.length,
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return pointsTableRaw(
                                  _pointsController.points[index]['date']!,
                                  _pointsController.points[index]['purpose']!,
                                  _pointsController.points[index]['points']!);
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
          ),
        ],
      ),
    );
  }
}
