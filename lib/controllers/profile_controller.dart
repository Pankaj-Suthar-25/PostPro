import 'package:get/get.dart';
import '../models/user_model.dart';
import '../services/auth_service.dart';

class ProfileController extends GetxController {
  final AuthService _authService = AuthService();
  var user = UserModel(id: '', name: '', email: '', username: '').obs;

  @override
  void onInit() {
    super.onInit();
    fetchUser();
  }

  void fetchUser() async {
    user.value = await _authService.getUser();
  }

  void updateUser (UserModel updatedUser ) async {
    try {
      await _authService.updateUser (updatedUser);
      fetchUser (); // Refresh user data after update
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}
