import 'package:firebase_auth/firebase_auth.dart';
import '../models/user_model.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<UserModel> login(String email, String password) async {
    UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    return UserModel(id: userCredential.user!.uid, email: email, name: '');
  }

  Future<UserModel> signup(String email, String password) async {
    UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    return UserModel(id: userCredential.user!.uid, email: email, name: '');
  }

  Future<void> logout() async {
    await _firebaseAuth.signOut();
  }

  Future<UserModel> getUser() async {
    User? user = _firebaseAuth.currentUser ;
    return UserModel(id: user!.uid, email: user.email!, name: '');
  }

  Future<void> updateUser (UserModel updatedUser ) async {
    User? user = _firebaseAuth.currentUser ;
    if (user != null) {
      // Update user profile logic here
      // For example, you can update the user's display name or other attributes
      await user.updateProfile(displayName: updatedUser .name);
      // You may also want to update the user in your database
    }
  }

  // In lib/services/auth_service.dart
  Future<void> resetPassword(String email) async {
    await _firebaseAuth.sendPasswordResetEmail(email: email);
  }
}
