import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/auth_controller.dart';

class ForgotPasswordView extends StatelessWidget {
  final AuthController _authController = Get.put(AuthController());
  final TextEditingController emailController = TextEditingController();

  ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Forgot Password')),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            ElevatedButton(
              onPressed: () async {
                try {
                  await _authController.resetPassword(emailController.text);
                  Get.snackbar('Success', 'Password reset email sent.');
                } catch (e) {
                  Get.snackbar('Error', e.toString());
                }
              },
              child: Text('Reset Password'),
            ),
          ],
        ),
      ),
    );
  }
}