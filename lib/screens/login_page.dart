import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller = Get.put(LoginController());
  final TextEditingController phoneController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 30),
            const Center(
              child: Icon(
                Icons.phone_android,
                size: 100,
                color: Colors.teal,
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              'Welcome Back!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Text(
              'Enter your mobile number to continue',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            TextField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Mobile Number',
                labelStyle: const TextStyle(color: Colors.teal),
                hintText: 'Enter your 10-digit mobile number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.teal),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.teal, width: 2),
                ),
                prefixIcon: const Icon(Icons.phone, color: Colors.teal),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final phoneNumber = phoneController.text.trim();

                // Validate mobile number
                if (phoneNumber.isEmpty) {
                  Get.snackbar(
                    'Error',
                    'Mobile number cannot be empty',
                    backgroundColor: Colors.red,
                    colorText: Colors.white,
                  );
                } else if (!RegExp(r'^\d{10}$').hasMatch(phoneNumber)) {
                  Get.snackbar(
                    'Invalid Number',
                    'Please enter a valid 10-digit mobile number',
                    backgroundColor: Colors.orange,
                    colorText: Colors.white,
                  );
                } else {
                  // If valid, proceed to login
                  controller.login(phoneNumber);
                  Get.snackbar(
                    'Success',
                    'Verification code sent to $phoneNumber',
                    backgroundColor: Colors.green,
                    colorText: Colors.white,
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(vertical: 14),
              ),
              child: const Text(
                'Continue',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'By continuing, you agree to our Terms & Conditions',
              style: TextStyle(fontSize: 12, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
