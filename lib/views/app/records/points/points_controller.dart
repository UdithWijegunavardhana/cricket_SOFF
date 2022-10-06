import 'package:get/get.dart';
import 'package:soff_cricket_hybrid/models/user/user_model.dart';
import 'package:soff_cricket_hybrid/services/auth/user_manager_service.dart';
import 'package:soff_cricket_hybrid/services/point_service.dart';

class PointsController extends FullLifeCycleController {
  var points = RxList();
  var totalPoints = RxInt(0);

  @override
  void onReady() {
    getPoints();
    super.onReady();
  }

  @override
  void onClose() {
    points.value = [];
    totalPoints.value = 0;
    super.onClose();
  }

  Future<void> getPoints() async {
    UserManager _userManager = UserManager();
    UserModel _user = await _userManager.getUserData();
    PointService()
        .getPointsByCustomerEmail(_user.email!)
        .then((value) {
          if (value.status) {
            int? totalPoints = 0;

            for (var point in value.data) {
              totalPoints = totalPoints! + int.parse(point['points']);
            }

            points.value = value.data;
            this.totalPoints.value = totalPoints!;
          }
        })
        .whenComplete(() {})
        .onError((error, stackTrace) {
          print(stackTrace);
        });
  }
}
