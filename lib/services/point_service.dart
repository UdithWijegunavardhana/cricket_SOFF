import 'package:soff_cricket_hybrid/config/config_handler.dart';
import 'package:soff_cricket_hybrid/models/api_response/api_respone_model.dart';
import 'package:soff_cricket_hybrid/services/base_service.dart';

class PointService extends BaseService {

  final _pointsAPIConfigHandler = ConfigHandler.loadAPIConfigs()?.pointsApis;

  Future<ApiResponseModel> getPointsByCustomerEmail(String customerEmail) async {
    try {
      var res = await dio.get(_pointsAPIConfigHandler!.getPointsByCustomerEmail + customerEmail);
      return ApiResponseModel(status: true, data: res.data['data']);
    } catch (e) {
      return ApiResponseModel(status: false, message: e.toString());
    }
  }

}