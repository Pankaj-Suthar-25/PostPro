import 'package:get/get.dart';
import '../models/user_model.dart';
import '../services/auth_service.dart';

class AuthController extends GetxController {
  final AuthService _authService = AuthService();
  var user = UserModel(id: '', email: '', name: '', username: null).obs;

  Future<void> login(String email, String password) async {
    UserModel loggedInUser = await _authService.login(email, password);
    user.value = loggedInUser;
  }

  Future<void> signup(String email, String password, String username) async {
    UserModel signedUpUser = await _authService.signup(email, password, username);
    user.value = signedUpUser;
  }

  Future<void> logout() async {
    await _authService.logout();
    user.value = UserModel(id: '', name: '', email: '', username: null);
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
