import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../models/otp_model.dart';
import '../screens/class_list_page.dart'; // Assuming this exists

class OTPController extends GetxController {
  var isLoading = false.obs;
  var errorMessage = ''.obs;
  var otpModel = Rxn<OtpModel>(); // Model to store the OTP response

  Future<void> verifyOTP(String userName, String otp) async {
    isLoading(true);
    try {
      final response = await http.post(
        Uri.parse('https://internal.stockpathshala.in/api/v1/verify-login-register'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"user_name": userName, "otp": otp}),
      );

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);


        otpModel.value = OtpModel.fromJson(data);


        if (otpModel.value!.token != null) {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.setString('token', otpModel.value!.token!);


          Get.offAll(ClassListPage());
        } else {
          errorMessage.value = 'Token not found in response';
        }
      } else {
        errorMessage.value = 'OTP Verification failed. Status code: ${response.statusCode}';
      }
    } catch (e) {
      errorMessage.value = 'An error occurred: $e';
    } finally {
      isLoading(false);
    }
  }
}
