import 'package:flutter/foundation.dart';
import 'package:quiver/core.dart';
import 'index.dart';




@immutable
class ApiConfig {

  const ApiConfig({
    required this.baseApiUrl,
    required this.customerApis,
    required this.pointsApis,
  });

  final String baseApiUrl;
  final CustomerApis customerApis;
  final PointsApis pointsApis;

  factory ApiConfig.fromJson(Map<String,dynamic> json) => ApiConfig(
    baseApiUrl: json['base_api_url'].toString(),
    customerApis: CustomerApis.fromJson(json['customer_apis'] as Map<String, dynamic>),
    pointsApis: PointsApis.fromJson(json['points_apis'] as Map<String, dynamic>)
  );
  
  Map<String, dynamic> toJson() => {
    'base_api_url': baseApiUrl,
    'customer_apis': customerApis.toJson(),
    'points_apis': pointsApis.toJson()
  };

  ApiConfig clone() => ApiConfig(
    baseApiUrl: baseApiUrl,
    customerApis: customerApis.clone(),
    pointsApis: pointsApis.clone()
  );


  ApiConfig copyWith({
    String? baseApiUrl,
    CustomerApis? customerApis,
    PointsApis? pointsApis
  }) => ApiConfig(
    baseApiUrl: baseApiUrl ?? this.baseApiUrl,
    customerApis: customerApis ?? this.customerApis,
    pointsApis: pointsApis ?? this.pointsApis,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is ApiConfig && baseApiUrl == other.baseApiUrl && customerApis == other.customerApis && pointsApis == other.pointsApis;

  @override
  int get hashCode => baseApiUrl.hashCode ^ customerApis.hashCode ^ pointsApis.hashCode;
}

@immutable
class CustomerApis {

  const CustomerApis({
    required this.getCustomerByEmail,
    required this.getMachineHoursByCustomerId,
  });

  final String getCustomerByEmail;
  final String getMachineHoursByCustomerId;

  factory CustomerApis.fromJson(Map<String,dynamic> json) => CustomerApis(
    getCustomerByEmail: json['get_customer_by_email'].toString(),
    getMachineHoursByCustomerId: json['get_machine_hours_by_customer_id'].toString()
  );
  
  Map<String, dynamic> toJson() => {
    'get_customer_by_email': getCustomerByEmail,
    'get_machine_hours_by_customer_id': getMachineHoursByCustomerId
  };

  CustomerApis clone() => CustomerApis(
    getCustomerByEmail: getCustomerByEmail,
    getMachineHoursByCustomerId: getMachineHoursByCustomerId
  );


  CustomerApis copyWith({
    String? getCustomerByEmail,
    String? getMachineHoursByCustomerId
  }) => CustomerApis(
    getCustomerByEmail: getCustomerByEmail ?? this.getCustomerByEmail,
    getMachineHoursByCustomerId: getMachineHoursByCustomerId ?? this.getMachineHoursByCustomerId,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is CustomerApis && getCustomerByEmail == other.getCustomerByEmail && getMachineHoursByCustomerId == other.getMachineHoursByCustomerId;

  @override
  int get hashCode => getCustomerByEmail.hashCode ^ getMachineHoursByCustomerId.hashCode;
}

@immutable
class PointsApis {

  const PointsApis({
    required this.getPointsByCustomerEmail,
  });

  final String getPointsByCustomerEmail;

  factory PointsApis.fromJson(Map<String,dynamic> json) => PointsApis(
    getPointsByCustomerEmail: json['get_points_by_customer_email'].toString()
  );
  
  Map<String, dynamic> toJson() => {
    'get_points_by_customer_email': getPointsByCustomerEmail
  };

  PointsApis clone() => PointsApis(
    getPointsByCustomerEmail: getPointsByCustomerEmail
  );


  PointsApis copyWith({
    String? getPointsByCustomerEmail
  }) => PointsApis(
    getPointsByCustomerEmail: getPointsByCustomerEmail ?? this.getPointsByCustomerEmail,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is PointsApis && getPointsByCustomerEmail == other.getPointsByCustomerEmail;

  @override
  int get hashCode => getPointsByCustomerEmail.hashCode;
}
