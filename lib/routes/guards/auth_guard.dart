import 'package:auto_route/auto_route.dart';
import 'package:get/get.dart';
import 'package:soff_cricket_hybrid/routes/app_router.gr.dart';
import 'package:soff_cricket_hybrid/services/auth/keycloak_auth_service.dart';
import 'package:soff_cricket_hybrid/services/auth/token_manager_service.dart';

class AuthGuard extends AutoRouteGuard {

  bool auth = false;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (isAuthenticated()) {
      await KeyCloakAuthService.refreshToken();
      resolver.next(true);
    } else {
      resolver.next(false);
      bool loginState = await KeyCloakAuthService.login();
      TokenManager _tokenManager = Get.find<TokenManager>();
      bool emailVerified = _tokenManager.getEmailVerified() == 'true' ? true :false;
      if( emailVerified ) {
        router.replace(CompleteProfileRoute());
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
    String? refreshToken = _tokenManager.getAccessToken();
    String? tokenExpiryTime = _tokenManager.getExpiryTime();
    print("access Token  " + accessToken.toString());
    print("refresh Token  " + refreshToken.toString());
    print("Expiry Time  " + tokenExpiryTime.toString());
    if(accessToken == null){
      return false;
    }
    return true;
  }
}
