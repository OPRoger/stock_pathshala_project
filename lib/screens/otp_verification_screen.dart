import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import '../controller/otp_controller.dart';

class OTPVerificationPage extends StatelessWidget {
  final String userName;
  final OTPController controller = Get.put(OTPController());

  OTPVerificationPage({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify OTP'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 40),
              const Center(
                child: Icon(
                  Icons.lock_outline,
                  size: 100,
                  color: Colors.teal,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'OTP Verification',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                'Enter the OTP sent to $userName',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              Pinput(
                length: 4,
                obscureText: false,
                onCompleted: (pin) {
                  if (pin.isEmpty) {
                    Get.snackbar(
                      'Error',
                      'OTP cannot be empty',
                      backgroundColor: Colors.red,
                      colorText: Colors.white,
                    );
                  } else {
                    controller.verifyOTP(userName, pin);
                  }
                },
                defaultPinTheme: PinTheme(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.teal),
                  ),
                ),
                focusedPinTheme: PinTheme(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.teal, width: 2),
                  ),
                ),
                submittedPinTheme: PinTheme(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.teal,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Obx(() {
                if (controller.isLoading.value) {
                  return Center(child: CircularProgressIndicator());
                } else if (controller.errorMessage.isNotEmpty) {
                  return Center(
                    child: Text(
                      controller.errorMessage.value,
                      style: const TextStyle(color: Colors.red, fontSize: 16),
                    ),
                  );
                } else if (controller.otpModel.value != null) {
                  return Center(
                    child: Column(
                      children: [
                        const Icon(Icons.check_circle_outline, color: Colors.green, size: 40),
                        const SizedBox(height: 10),
                        Text(
                          'OTP Verified! Token: ${controller.otpModel.value!.token}',
                          style: const TextStyle(color: Colors.green, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                } else {
                  return const SizedBox.shrink();
                }
              }),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  // Logic to resend OTP
                  Get.snackbar(
                    'Resend OTP',
                    'OTP has been resent successfully!',
                    backgroundColor: Colors.blue,
                    colorText: Colors.white,
                  );
                },
                child: const Text(
                  'Resend OTP',
                  style: TextStyle(color: Colors.teal, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
