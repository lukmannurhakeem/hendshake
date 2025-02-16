import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:hendshake/model/activity_model.dart';
import 'package:hendshake/services/http_service.dart';
import 'package:hendshake/services/local_db_service.dart';
import 'package:hendshake/services/locator_service.dart';

class ActivityRepository {
  static ActivityRepository get instance => locator<ActivityRepository>();
  static final serviceLocalDb = locator<LocalDBService>();

  Future<ActivityModel> getActivityModel() async {
    try {
      Response response = await APIService.instance.get(
        {},
        fullUrl: 'https://bored.api.lewagon.com/api/activity',
      );
      final json = jsonEncode(response.data);
      final model = activityModelFromJson(json);
      return model;
    } catch (e, st) {
      print(e.toString());
      print(st);
      rethrow;
    }
  }

  Future<ActivityModel> getActivityModelByType(String type) async {
    try {
      Response response = await APIService.instance.get(
        {},
        fullUrl: 'https://bored.api.lewagon.com/api/activity?type=$type',
      );
      final json = jsonEncode(response.data);
      final model = activityModelFromJson(json);
      return model;
    } catch (e, st) {
      print(e.toString());
      print(st);
      rethrow;
    }
  }
}
