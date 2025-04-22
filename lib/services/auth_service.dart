import 'package:firebase_auth/firebase_auth.dart';
import '../models/user_model.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<UserModel> login(String email, String password) async {
    UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    return UserModel(id: userCredential.user!.uid, email: email, name: '');
  }

  Future<UserModel> signup(String email, String password, String username) async {
    UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    await userCredential.user!.updateProfile(displayName: username);
    return UserModel(id: userCredential.user!.uid, email: email, name: '', username: username);
  }

  Future<void> logout() async {
    await _firebaseAuth.signOut();
  }

  Future<UserModel> getUser() async {
    User? user = _firebaseAuth.currentUser ;
    return UserModel(id: user!.uid, email: user.email!, name: '', username: user.displayName);
  }

  Future<void> updateUser (UserModel updatedUser ) async {
    User? user = _firebaseAuth.currentUser ;
    if (user != null) {
      await user.updateProfile(displayName: updatedUser.username ?? updatedUser.name);
    }
  }

  // In lib/services/auth_service.dart
  Future<void> resetPassword(String email) async {
    await _firebaseAuth.sendPasswordResetEmail(email: email);
  }
}
