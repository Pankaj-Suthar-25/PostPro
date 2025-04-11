import 'package:get/get.dart';
import '../models/user_model.dart';
import '../services/auth_service.dart';

class AuthController extends GetxController {
  final AuthService _authService = AuthService();
  var user = UserModel(id: '', email: '', name: '').obs;

  Future<void> login(String email, String password) async {
    user.value = await _authService.login(email, password);
  }

  Future<void> signup(String email, String password) async {
    user.value = await _authService.signup(email, password);
  }

  Future<void> logout() async {
    await _authService.logout();
    user.value = UserModel(id: '', name: '', email: '');
  }

  // In lib/controllers/auth_controller.dart
  Future<void> resetPassword(String email) async {
    try {
      await _authService.resetPassword(email);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}
