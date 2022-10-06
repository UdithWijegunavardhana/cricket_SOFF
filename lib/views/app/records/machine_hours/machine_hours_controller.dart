import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:soff_cricket_hybrid/models/user/user_model.dart';
import 'package:soff_cricket_hybrid/services/auth/user_manager_service.dart';
import 'package:soff_cricket_hybrid/services/customer_service.dart';

class MachineHoursController extends FullLifeCycleController {
  var machineHours = RxList();
  var totalHours = RxDouble(0);

  var userService = Get.find<UserManager>();

  @override
  void onReady() {
    getMachineHours();
    super.onReady();
  }

  @override
  void onClose() {
    machineHours.value = [];
    totalHours.value = 0;
    super.onClose();
  }

  Future<void> getMachineHours() async {
    UserManager _userManager = UserManager();
    UserModel _user = await _userManager.getUserData();
    CustomerService()
        .getMachineHoursByCustomer(_user.id!)
        .then((value) {
          if (value.status) {
            double? totalHours = 0;

            for (var machineHour in value.data) {
              totalHours = totalHours! + machineHour['hours'];
            }

            machineHours.value = value.data;
            this.totalHours.value = totalHours!;
          }
        })
        .whenComplete(() {})
        .onError((error, stackTrace) {
          print(stackTrace);
        });
  }
}
