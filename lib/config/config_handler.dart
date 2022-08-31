import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:soff_cricket_hybrid/config/model/api_config.dart';

class ConfigHandler {
  static Map<String, dynamic>? _apiData;
  static ApiConfig? loadAPIConfigs() {
    return ApiConfig.fromJson(_apiData!);
  }

  static void init() {
    rootBundle
        .loadString('assets/config/api_config.json')
        .then((s) => {_apiData = json.decode(s)});
  }
}