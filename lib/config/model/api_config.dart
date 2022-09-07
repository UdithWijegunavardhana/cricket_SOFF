import 'package:flutter/foundation.dart';
import 'package:quiver/core.dart';
import 'index.dart';



@immutable
class ApiConfig {

  const ApiConfig({
    required this.baseApiUrl,
  });

  final String baseApiUrl;

  factory ApiConfig.fromJson(Map<String,dynamic> json) => ApiConfig(
    baseApiUrl: json['base_api_url'].toString()
  );
  
  Map<String, dynamic> toJson() => {
    'base_api_url': baseApiUrl
  };

  ApiConfig clone() => ApiConfig(
    baseApiUrl: baseApiUrl
  );


  ApiConfig copyWith({
    String? baseApiUrl
  }) => ApiConfig(
    baseApiUrl: baseApiUrl ?? this.baseApiUrl,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is ApiConfig && baseApiUrl == other.baseApiUrl;

  @override
  int get hashCode => baseApiUrl.hashCode;
}
