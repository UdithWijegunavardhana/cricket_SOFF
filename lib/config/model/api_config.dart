import 'package:flutter/foundation.dart';
import 'package:quiver/core.dart';
import 'index.dart';






@immutable
class ApiConfig {

  const ApiConfig({
    required this.baseApiUrl,
    required this.customerApis,
    required this.pointsApis,
    required this.resourcesApis,
    required this.scheduleApis,
  });

  final String baseApiUrl;
  final CustomerApis customerApis;
  final PointsApis pointsApis;
  final ResourcesApis resourcesApis;
  final ScheduleApis scheduleApis;

  factory ApiConfig.fromJson(Map<String,dynamic> json) => ApiConfig(
    baseApiUrl: json['base_api_url'].toString(),
    customerApis: CustomerApis.fromJson(json['customer_apis'] as Map<String, dynamic>),
    pointsApis: PointsApis.fromJson(json['points_apis'] as Map<String, dynamic>),
    resourcesApis: ResourcesApis.fromJson(json['resources_apis'] as Map<String, dynamic>),
    scheduleApis: ScheduleApis.fromJson(json['schedule_apis'] as Map<String, dynamic>)
  );
  
  Map<String, dynamic> toJson() => {
    'base_api_url': baseApiUrl,
    'customer_apis': customerApis.toJson(),
    'points_apis': pointsApis.toJson(),
    'resources_apis': resourcesApis.toJson(),
    'schedule_apis': scheduleApis.toJson()
  };

  ApiConfig clone() => ApiConfig(
    baseApiUrl: baseApiUrl,
    customerApis: customerApis.clone(),
    pointsApis: pointsApis.clone(),
    resourcesApis: resourcesApis.clone(),
    scheduleApis: scheduleApis.clone()
  );


  ApiConfig copyWith({
    String? baseApiUrl,
    CustomerApis? customerApis,
    PointsApis? pointsApis,
    ResourcesApis? resourcesApis,
    ScheduleApis? scheduleApis
  }) => ApiConfig(
    baseApiUrl: baseApiUrl ?? this.baseApiUrl,
    customerApis: customerApis ?? this.customerApis,
    pointsApis: pointsApis ?? this.pointsApis,
    resourcesApis: resourcesApis ?? this.resourcesApis,
    scheduleApis: scheduleApis ?? this.scheduleApis,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is ApiConfig && baseApiUrl == other.baseApiUrl && customerApis == other.customerApis && pointsApis == other.pointsApis && resourcesApis == other.resourcesApis && scheduleApis == other.scheduleApis;

  @override
  int get hashCode => baseApiUrl.hashCode ^ customerApis.hashCode ^ pointsApis.hashCode ^ resourcesApis.hashCode ^ scheduleApis.hashCode;
}

@immutable
class CustomerApis {

  const CustomerApis({
    required this.getCustomerByEmail,
    required this.getMachineHoursByCustomerId,
    required this.saveCustomer,
  });

  final String getCustomerByEmail;
  final String getMachineHoursByCustomerId;
  final String saveCustomer;

  factory CustomerApis.fromJson(Map<String,dynamic> json) => CustomerApis(
    getCustomerByEmail: json['get_customer_by_email'].toString(),
    getMachineHoursByCustomerId: json['get_machine_hours_by_customer_id'].toString(),
    saveCustomer: json['save_customer'].toString()
  );
  
  Map<String, dynamic> toJson() => {
    'get_customer_by_email': getCustomerByEmail,
    'get_machine_hours_by_customer_id': getMachineHoursByCustomerId,
    'save_customer': saveCustomer
  };

  CustomerApis clone() => CustomerApis(
    getCustomerByEmail: getCustomerByEmail,
    getMachineHoursByCustomerId: getMachineHoursByCustomerId,
    saveCustomer: saveCustomer
  );


  CustomerApis copyWith({
    String? getCustomerByEmail,
    String? getMachineHoursByCustomerId,
    String? saveCustomer
  }) => CustomerApis(
    getCustomerByEmail: getCustomerByEmail ?? this.getCustomerByEmail,
    getMachineHoursByCustomerId: getMachineHoursByCustomerId ?? this.getMachineHoursByCustomerId,
    saveCustomer: saveCustomer ?? this.saveCustomer,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is CustomerApis && getCustomerByEmail == other.getCustomerByEmail && getMachineHoursByCustomerId == other.getMachineHoursByCustomerId && saveCustomer == other.saveCustomer;

  @override
  int get hashCode => getCustomerByEmail.hashCode ^ getMachineHoursByCustomerId.hashCode ^ saveCustomer.hashCode;
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

@immutable
class ResourcesApis {

  const ResourcesApis({
    required this.getAllResourceCategories,
    required this.getAllResourcesByCategoryId,
  });

  final String getAllResourceCategories;
  final String getAllResourcesByCategoryId;

  factory ResourcesApis.fromJson(Map<String,dynamic> json) => ResourcesApis(
    getAllResourceCategories: json['get_all_resource_categories'].toString(),
    getAllResourcesByCategoryId: json['get_all_resources_by_category_id'].toString()
  );
  
  Map<String, dynamic> toJson() => {
    'get_all_resource_categories': getAllResourceCategories,
    'get_all_resources_by_category_id': getAllResourcesByCategoryId
  };

  ResourcesApis clone() => ResourcesApis(
    getAllResourceCategories: getAllResourceCategories,
    getAllResourcesByCategoryId: getAllResourcesByCategoryId
  );


  ResourcesApis copyWith({
    String? getAllResourceCategories,
    String? getAllResourcesByCategoryId
  }) => ResourcesApis(
    getAllResourceCategories: getAllResourceCategories ?? this.getAllResourceCategories,
    getAllResourcesByCategoryId: getAllResourcesByCategoryId ?? this.getAllResourcesByCategoryId,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is ResourcesApis && getAllResourceCategories == other.getAllResourceCategories && getAllResourcesByCategoryId == other.getAllResourcesByCategoryId;

  @override
  int get hashCode => getAllResourceCategories.hashCode ^ getAllResourcesByCategoryId.hashCode;
}

@immutable
class ScheduleApis {

  const ScheduleApis({
    required this.getSchedulesByDate,
    required this.saveSchedule,
  });

  final String getSchedulesByDate;
  final String saveSchedule;

  factory ScheduleApis.fromJson(Map<String,dynamic> json) => ScheduleApis(
    getSchedulesByDate: json['get_schedules_by_date'].toString(),
    saveSchedule: json['save_schedule'].toString()
  );
  
  Map<String, dynamic> toJson() => {
    'get_schedules_by_date': getSchedulesByDate,
    'save_schedule': saveSchedule
  };

  ScheduleApis clone() => ScheduleApis(
    getSchedulesByDate: getSchedulesByDate,
    saveSchedule: saveSchedule
  );


  ScheduleApis copyWith({
    String? getSchedulesByDate,
    String? saveSchedule
  }) => ScheduleApis(
    getSchedulesByDate: getSchedulesByDate ?? this.getSchedulesByDate,
    saveSchedule: saveSchedule ?? this.saveSchedule,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is ScheduleApis && getSchedulesByDate == other.getSchedulesByDate && saveSchedule == other.saveSchedule;

  @override
  int get hashCode => getSchedulesByDate.hashCode ^ saveSchedule.hashCode;
}
