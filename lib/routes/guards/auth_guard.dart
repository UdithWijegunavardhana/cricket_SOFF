import 'package:auto_route/auto_route.dart';
import 'package:get/get.dart';
import 'package:soff_cricket_hybrid/routes/app_router.gr.dart';
import 'package:soff_cricket_hybrid/services/auth/keycloak_auth_service.dart';
import 'package:soff_cricket_hybrid/services/auth/token_manager_service.dart';
import 'package:soff_cricket_hybrid/services/auth/user_manager_service.dart';
import 'package:soff_cricket_hybrid/utils/type_parse.dart';

import '../../services/customer_service.dart';

class AuthGuard extends AutoRouteGuard {

  bool auth = false;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {


    if (isAuthenticated()) {

      await KeyCloakAuthService.refreshToken();

      UserManager userManager = UserManager();
      var userData = userManager.getUserData();
      bool isUserRegistered = await checkRegisteredUser(userData.email!);

      if( !isUserRegistered ) {
        router.replace( CompleteProfileRoute() );
      }else{
        resolver.next(true);
      }
    } else {
      resolver.next(false);
      bool loginState = await KeyCloakAuthService.login();

      await KeyCloakAuthService.refreshToken();

      UserManager userManager = UserManager();
      var userData = userManager.getUserData();
      bool isUserRegistered = await checkRegisteredUser(userData.email!);

      if( !isUserRegistered ) {
        router.replace( CompleteProfileRoute() );
      }else {
        if (loginState) {
          router.replace(const HomeBase());
        }
      }
    }
  }

  bool isAuthenticated() {
    TokenManager _tokenManager = Get.find<TokenManager>();
    String? accessToken = _tokenManager.getAccessToken();
    String? emailVerified = _tokenManager.getEmailVerified();

    if(accessToken == null || emailVerified == null){
      return false;
    }
    return true;
  }

  Future<bool> checkRegisteredUser(String email) async {

    var response = await CustomerService()
        .getCustomerByEmail(email);

    if(response.status) {
      return response.data.email  != null;
    }

    return false;
  }
}
