import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:soff_cricket_hybrid/services/auth/token_manager_service.dart';

class TokenInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    TokenManager _tokenManager = Get.find<TokenManager>();
    String? accessToken = _tokenManager.getAccessToken();
    options.headers['auth-token'] = accessToken;
    // options.headers['Authorization'] = 'Bearer $accessToken';
    super.onRequest(options, handler);
  }
}