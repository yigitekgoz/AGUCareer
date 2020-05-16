import 'package:agucareer/models/user_model.dart';
import 'package:agucareer/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class FirebaseAuthService implements AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<User> currentUser() async {
    try {
      FirebaseUser user = await _auth.currentUser();
      return _userFromFirebase(user);
    } catch (e) {
      debugPrint("FirebaseAuthServiceError currentUser(): ${e.toString()}");
      return null;
    }
  }

  User _userFromFirebase(FirebaseUser fUser) {
    if (fUser == null) return null;
    debugPrint("LoginInfo: ${fUser.email}");
    return User(userID: fUser.uid);
  }

  @override
  Future<User> signIn(
      {@required String email, @required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return currentUser();
    } catch (e) {
      debugPrint("FirebaseAuthServiceError signIn(): ${e.toString()}");
    }
    // TODO: implement signIn
    return null;
  }

  @override
  Future<bool> signOut() async {
    try {
      await _auth.signOut();
      return true;
    } catch (e) {
      debugPrint("FirebaseAuthServiceError signOut(): ${e.toString()}");
      return false;
    }
  }

  @override
  Future<bool> resetPassword({@required String email}) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      return true;
    } catch (e) {
      debugPrint("FirebaseAuthServiceError resetPassword(): ${e.toString()}");
      return false;
    }
  }
}
