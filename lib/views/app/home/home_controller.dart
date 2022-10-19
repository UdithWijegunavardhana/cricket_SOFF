import 'package:get/get.dart';
import 'package:soff_cricket_hybrid/services/booking_service.dart';

class HomeController extends GetxController {
  var resourceCategories = RxList();
  var selectedCategoryId = RxString('');
  var isLoading = RxBool(true);

  @override
  void onInit() {
    getCategories();
    super.onInit();
  }

  Future<void> getCategories() async {
    BookingService().getCategories().then((value) {
      if (value.status) {
        resourceCategories.value = value.data;
      }
    }).whenComplete(() {
      isLoading.value = false;
    }).onError((error, stackTrace) {
      print(stackTrace);
    });
  }
}
