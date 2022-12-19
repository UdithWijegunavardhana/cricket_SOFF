import 'package:get/get.dart';
import 'package:soff_cricket_hybrid/models/resource/resource_model.dart';
import 'package:soff_cricket_hybrid/models/time_slots/time_slot_model.dart';

import '../../../services/schedule_service.dart';

class ScheduleWidgetController extends GetxController {

  var schedules = RxList();
  var isLoading = RxBool(true);
  DateTime selectedDate;

  ScheduleWidgetController({required this.selectedDate});

  // @override
  // void onReady() {
  //   getResources();
  //   super.onReady();
  // }

  @override
  void onClose() {
    isLoading.value = true;
    schedules.value = [];
    super.onClose();
  }

  Future<void> getResources(String resourceTypeId, DateTime dateTime) async {

    List<TimeSlotModel> _timeSlotList = <TimeSlotModel>[];
    isLoading.value = true;

    ScheduleService().getSchedulesByDate('${dateTime.year}-${dateTime.month}-${dateTime.day}').then((value) {
      if (value.status) {
        for(ResourceModel resource in value.data){
          if(resource.id != null && resource.id == resourceTypeId){
            for(TimeSlotModel timeSlot in resource.timeslots!) {
              _timeSlotList.add(timeSlot);
            }
          }
        }
        schedules.value = _timeSlotList;
      }
    }).whenComplete(() {
      isLoading.value = false;
    }).onError((error, stackTrace) {
      print(stackTrace);
    });
  }
}