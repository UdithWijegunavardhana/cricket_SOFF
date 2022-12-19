import 'package:soff_cricket_hybrid/models/category/category_model.dart';
import 'package:soff_cricket_hybrid/models/resource/resource_model.dart';
import 'package:soff_cricket_hybrid/models/schedule/schedule_model.dart';
import 'package:soff_cricket_hybrid/services/base_service.dart';

import '../config/config_handler.dart';
import '../models/api_response/api_respone_model.dart';

class BookingService extends BaseService {
  final _resourceAPIConfigHandler = ConfigHandler.loadAPIConfigs()?.resourcesApis;

  Future<ApiResponseModel> getCategories() async {
    try {
      List<CategoryModel> resourceList = <CategoryModel>[];
      var res = await dio.get(_resourceAPIConfigHandler!.getAllResourceCategories + '0/1000');
      for (var item in res.data['data']['list']) {
        resourceList.add(CategoryModel.fromJson(item));
      }
      return ApiResponseModel(status: true, data: resourceList);
    } catch (e) {
      return ApiResponseModel(status: false, message: e.toString());
    }
  }

  Future<ApiResponseModel> getResources(String categoryId) async {
    try {
      List<ResourceModel> resourceList = <ResourceModel>[];
      var res = await dio.get(_resourceAPIConfigHandler!.getAllResourcesByCategoryId + categoryId);
      for (var item in res.data['data']) {
        resourceList.add(ResourceModel.fromJson(item));
      }
      return ApiResponseModel(status: true, data: resourceList);
    } catch (e) {
      return ApiResponseModel(status: false, message: e.toString());
    }
  }

  // Future<ApiResponseModel> getSchedulesByDate(String date) async {
  //   try {
  //     var res = await dio
  //         .get(_resourceAPIConfigHandler!.getAllResourcesByCategoryId + date);

  //     ScheduleModel resource = ScheduleModel.fromJson(res.data);

  //     return ApiResponseModel(status: true, data: resource);
  //   } catch (e) {
  //     return ApiResponseModel(status: false, message: e.toString());
  //   }
  // }

}
