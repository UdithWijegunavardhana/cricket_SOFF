import 'package:get/get.dart';
import 'package:soff_cricket_hybrid/services/auth/token_manager_service.dart';
import 'package:soff_cricket_hybrid/services/auth/user_manager_service.dart';
import 'package:soff_cricket_hybrid/services/point_service.dart';
import 'package:soff_cricket_hybrid/views/app/home/home_controller.dart';

class ServiceBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(TokenManager());
    Get.put(UserManager());
  }
}