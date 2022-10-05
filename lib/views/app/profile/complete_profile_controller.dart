import 'package:get/get.dart';
import 'package:soff_cricket_hybrid/models/save_customer/save_customer_model.dart';
import 'package:soff_cricket_hybrid/models/user/user_model.dart';
import 'package:soff_cricket_hybrid/services/auth/user_manager_service.dart';

import '../../_shared/constants/api_actions.dart';

class CompleteProfileController extends GetxController {

  RxString telephone = RxString("");
  RxBool apiError = RxBool(false);

  SaveCustomerModel getUser() {

    UserManager userManager = UserManager();

    UserModel userModel = userManager.getUserData();

    SaveCustomerModel customerModel = SaveCustomerModel(
      email: userModel.email,
      action: ApiAction.newUser,
      firstName: userModel.firstName,
      lastName: userModel.lastName,
      image: "default_image",
      imageObject: null,
      isEditable: true,
      telephone: telephone.value.trim()
    );

    return customerModel;
  }
}