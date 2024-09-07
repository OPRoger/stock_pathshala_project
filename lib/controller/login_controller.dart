import 'dart:convert';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart'as http;

import '../screens/otp_verification_screen.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;

  Future<void> login(String userName) async {
    isLoading(true);
    final response = await http.post(
      Uri.parse('https://internal.stockpathshala.in/api/v1/login-register'),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"user_name": userName, "hash_code": "96pYMmXfHNR"}),
    );

    if (response.statusCode == 200) {
      Get.to(OTPVerificationPage(userName: userName));
    } else {
      Get.snackbar('Error', 'Login failed');
    }
    isLoading(false);
  }
}
