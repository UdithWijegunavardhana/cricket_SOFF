import 'dart:convert';

import 'package:soff_cricket_hybrid/config/config_handler.dart';
import 'package:soff_cricket_hybrid/models/api_response/api_respone_model.dart';
import 'package:soff_cricket_hybrid/services/base_service.dart';

import '../models/user/user_model.dart';

class CustomerService extends BaseService {
  final _customerAPIConfigHandler =
      ConfigHandler.loadAPIConfigs()?.customerApis;

  Future<ApiResponseModel> getCustomerByEmail(String customerEmail) async {
    try {
      var res = await dio
          .get(_customerAPIConfigHandler!.getCustomerByEmail + customerEmail);
      var user = UserModel.fromJson(res.data['data'][0]);
      return ApiResponseModel(status: true, data: user);
    } catch (e) {
      return ApiResponseModel(status: false, message: e.toString());
    }
  }

  Future<ApiResponseModel> getMachineHoursByCustomer(String customerId) async {
    try {
      var res = await dio.get(
          _customerAPIConfigHandler!.getMachineHoursByCustomerId + customerId);
      return ApiResponseModel(status: true, data: res.data['data']);
    } catch (e) {
      return ApiResponseModel(status: false, message: e.toString());
    }
  }

  Future<ApiResponseModel> saveCustomer(UserModel userModel) async {
    var encoded = json.encode(userModel);
    var decoded = json.decode(encoded);

    try {
      var res = await dio.post(_customerAPIConfigHandler!.saveCustomer,
          data: decoded);
      return ApiResponseModel(
          status: true, apiStatus: res.statusCode, data: res.data['data']);
    } catch (e) {
      return ApiResponseModel(
          status: false, apiStatus: 500, message: e.toString());
    }
  }

  Future<ApiResponseModel> deleteUserAccount(String? customerId,
      {bool? isHardDeleted = true}) async {
    try {
      if (customerId == null) throw 'Invalid user id';
      await dio.delete(_customerAPIConfigHandler!.deleteSoffCricket,
          queryParameters: {
            "customerId": customerId,
            "isHardDeleted": isHardDeleted
          });
      return const ApiResponseModel(status: true, apiStatus: 200);
    } catch (e) {
      return ApiResponseModel(
          status: false, apiStatus: 500, message: e.toString());
    }
  }
}
