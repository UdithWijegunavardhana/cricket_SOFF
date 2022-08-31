import 'package:get/get.dart';
import 'package:soff_cricket_hybrid/services/auth/token_manager_service.dart';

class ServiceBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(TokenManager());
  }
}