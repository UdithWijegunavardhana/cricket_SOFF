import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soff_cricket_hybrid/views/_shared/constants/colors.dart';
import 'package:soff_cricket_hybrid/views/_shared/widget/data_table_row.dart';
import 'package:soff_cricket_hybrid/views/app/records/machine_hours/machine_hours_controller.dart';

class MachineHoursScreen extends StatefulWidget {
  const MachineHoursScreen({Key? key}) : super(key: key);

  @override
  State<MachineHoursScreen> createState() => _MachineHoursScreenState();
}

class _MachineHoursScreenState extends State<MachineHoursScreen> {

  final MachineHoursController _machineHoursController = Get.put(MachineHoursController());

  @override
  void dispose() {
    Get.delete<MachineHoursController>();
    super.dispose();
  }

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
                  "Machine Hours",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                      Obx(
                        ()=> Text(
                        _machineHoursController.totalHours.toString(),
                        style:
                            const TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const Text("Total Hours")
                  ],
                ),
                decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
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
                          "Hours Summary",
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
                                  child: Text('Machine Type'))),
                          Expanded(
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text('Time'))),
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
                            itemCount: _machineHoursController.machineHours.length,
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return machineHoursRow( _machineHoursController.machineHours[index]['date']!,
                                  _machineHoursController.machineHours[index]['type']!,
                                  _machineHoursController.machineHours[index]['hours']!
                              );
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
