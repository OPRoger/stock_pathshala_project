import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../models/class_live model.dart';

class ClassListController extends GetxController {
  var isLoading = true;
  LiveClassModel? liveClassModel;

  @override
  void onInit() {
    super.onInit();
    fetchClasses();
  }

  Future<void> fetchClasses() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');

    print("------ token retrieved ----${token}");

    final response = await http.get(
      Uri.parse('https://internal.stockpathshala.in/api/v1/live_classes'),
      headers: {
        "Accept": "application/json",
        "Authorization": "Bearer $token"
      },
    );

    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      liveClassModel = LiveClassModel.fromJson(jsonData);

      if (liveClassModel != null) {
        print(" ---LiveClass data fetched---${liveClassModel!.data!.data}");
      }
    } else {
      Get.snackbar('Error', 'Failed to load classes');
    }
    isLoading = false;
    update();
  }
}
