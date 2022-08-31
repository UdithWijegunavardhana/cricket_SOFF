import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:openid_client/openid_client.dart';
import 'package:soff_cricket_hybrid/routes/app_router.gr.dart';
import 'package:soff_cricket_hybrid/services/auth/keycloak_auth_service.dart';

class AuthGuard extends AutoRouteGuard {

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (isAuthenticated()) {
      resolver.next(true);
    } else {
      resolver.next(false);
      // UserInfo userInfo = await KeyCloakAuthService.authenticate();
      // print(userInfo);
      router.replace(const HomeBase());

    }
  }

  bool isAuthenticated() {
    return false;
  }
}
