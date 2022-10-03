import 'package:auto_route/auto_route.dart';
import 'package:get/get.dart';
import 'package:soff_cricket_hybrid/routes/app_router.gr.dart';
import 'package:soff_cricket_hybrid/services/auth/keycloak_auth_service.dart';
import 'package:soff_cricket_hybrid/services/auth/token_manager_service.dart';
import 'package:soff_cricket_hybrid/utils/type_parse.dart';

class AuthGuard extends AutoRouteGuard {

  bool auth = false;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {

    TokenManager _tokenManager = Get.find<TokenManager>();
    bool emailVerified = TypeParse.stringToBool(_tokenManager.getEmailVerified()!);

    if (isAuthenticated()) {
      await KeyCloakAuthService.refreshToken();
      if( emailVerified ) {
        router.replace( CompleteProfileRoute() );
      }else{
        resolver.next(true);
      }
    } else {
      resolver.next(false);
      bool loginState = await KeyCloakAuthService.login();
      if( emailVerified ) {
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
    String? refreshToken = _tokenManager.getAccessToken();
    String? tokenExpiryTime = _tokenManager.getExpiryTime();
    String? emailVerified = _tokenManager.getEmailVerified();

    if(accessToken == null || emailVerified == null){
      return false;
    }
    return true;
  }
}
