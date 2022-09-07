import 'package:dio/dio.dart';
import 'package:soff_cricket_hybrid/config/config_handler.dart';
import 'package:soff_cricket_hybrid/utils/dio/token_interceptor.dart';

class GetDio {
  static Dio dio() {

    BaseOptions options =
    BaseOptions(baseUrl: ConfigHandler.loadAPIConfigs()!.baseApiUrl);
    Dio dio = Dio(options);
    dio.interceptors.add(TokenInterceptor());
    dio.interceptors.add(LogInterceptor(responseBody: true));
    return dio;
  }
}