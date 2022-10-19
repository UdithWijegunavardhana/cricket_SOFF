import 'package:soff_cricket_hybrid/models/category/category_model.dart';
import 'package:soff_cricket_hybrid/models/resource/resource_model.dart';
import 'package:soff_cricket_hybrid/models/schedule/schedule_model.dart';
import 'package:soff_cricket_hybrid/services/base_service.dart';

import '../config/config_handler.dart';
import '../models/api_response/api_respone_model.dart';

class ScheduleService extends BaseService {

  final _scheduleAPIConfigHandler =
      ConfigHandler.loadAPIConfigs()?.scheduleApis;

  Future<ApiResponseModel> getSchedulesByDate(String date) async {

    List<ResourceModel> _resourceList = <ResourceModel>[];

    try {
      var res = await dio
          .get(_scheduleAPIConfigHandler!.getSchedulesByDate + date);

      if(res.statusCode == 200) {

        var schedules = ScheduleModel.fromJson(res.data);

        for(var item in schedules.data!.resources!){
          _resourceList.add(item);
        }
      }

      return ApiResponseModel(status: true, data: _resourceList);
    } catch (e) {
      return ApiResponseModel(status: false, message: e.toString());
    }
  }

}