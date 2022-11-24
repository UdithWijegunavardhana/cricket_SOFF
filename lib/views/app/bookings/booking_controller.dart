import 'package:get/get.dart';
import 'package:soff_cricket_hybrid/services/booking_service.dart';
import 'package:soff_cricket_hybrid/views/app/home/home_controller.dart';

class BookingController extends GetxController {
  var homeController = Get.find<HomeController>();
  var resources = RxList();
  var resourceId;
  var isLoading = RxBool(true);

  BookingController(this.resourceId);

  @override
  void onReady() {
    getResources();
    super.onReady();
  }

  @override
  void onClose() {
    isLoading.value = true;
    super.onClose();
  }

  Future<void> getResources() async {
    isLoading.value = true;
    BookingService().getResources(resourceId).then((value) {
      if (value.status) {
        resources.value = value.data;
      }
    }).whenComplete(() {
      isLoading.value = false;
    }).onError((error, stackTrace) {
      print(stackTrace);
    });
  }
}
