import 'package:get/get.dart';
import 'package:soff_cricket_hybrid/services/auth/user_manager_service.dart';

class QRCodeScreenController extends GetxController {

  var username = RxString("");

  @override
  void onReady() {
    getUserName();
    super.onReady();
  }

  void getUserName() {
    UserManager _userManager = Get.find<UserManager>();
    username.value = _userManager.getUserName()!;
  }

}