import 'package:agucareer/locator.dart';
import 'package:agucareer/models/user_model.dart';
import 'package:agucareer/services/auth_service.dart';
import 'package:agucareer/services/firebase_auth_service.dart';

enum AppMode {FIREBASE}

class UserRepository implements AuthService {

  FirebaseAuthService _firebaseAuthService = locator<FirebaseAuthService>();

  AppMode _appMode = AppMode.FIREBASE;

  @override
  Future<User> currentUser() async{
    if(_appMode == AppMode.FIREBASE)
      return await _firebaseAuthService.currentUser();
    return null;
  }

  @override
  Future<User> signIn({String email, String password}) async{
    if(_appMode == AppMode.FIREBASE)
      return await _firebaseAuthService.signIn(email: email, password: password);
    return null;
  }

  @override
  Future<bool> signOut() async{
    if(_appMode == AppMode.FIREBASE)
      return await _firebaseAuthService.signOut();
    return false;
  }

  @override
  Future<bool> resetPassword({String email}) async {
    if(_appMode == AppMode.FIREBASE)
      return await _firebaseAuthService.resetPassword(email: email);
    return false;
  }
}