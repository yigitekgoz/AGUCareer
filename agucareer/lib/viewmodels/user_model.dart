import 'package:agucareer/locator.dart';
import 'package:agucareer/models/user_model.dart';
import 'package:agucareer/repository/user_repository.dart';
import 'package:agucareer/services/auth_service.dart';
import 'package:flutter/cupertino.dart';

enum ViewState {IDLE, BUSY}

class UserModel with ChangeNotifier implements AuthService{

  ViewState _state = ViewState.IDLE;
  UserRepository _userRepository = locator<UserRepository>();
  User _user;

  ViewState get state => _state;
  User get user => _user;

  set state(ViewState value) {
    _state = value;
    notifyListeners();
  }

  UserModel() {
    currentUser();
  }

  @override
  Future<User> currentUser() async{
    try{
      state = ViewState.BUSY;
      _user = await _userRepository.currentUser();
      return _user;
    }catch(e) {
      debugPrint("UserModelError currentUser(): ${e.toString()}");
      return null;
    }finally{
      _state = ViewState.IDLE;
    }
  }

  @override
  Future<User> signIn({String email, String password}) async{
    try{
      state = ViewState.BUSY;
      _user = await _userRepository.signIn(email: email, password: password);
      return _user;
    }catch(e) {
      debugPrint("UserModelError signIn(): ${e.toString()}");
      return null;
    }finally{
      _state = ViewState.IDLE;
    }
  }

  @override
  Future<bool> signOut() async{
    try{
      state = ViewState.BUSY;
      bool value = await _userRepository.signOut();
      _user = null;
      return value;
    }catch(e) {
      debugPrint("UserModelError signOut(): ${e.toString()}");
      return false;
    }finally{
      _state = ViewState.IDLE;
    }
  }

  @override
  Future<bool> resetPassword({String email}) async {
    try{
      state = ViewState.BUSY;
      bool value = await _userRepository.resetPassword(email: email);
      _user = null;
      return value;
    }catch(e) {
      debugPrint("UserModelError resetPassword(): ${e.toString()}");
      return false;
    }finally{
      _state = ViewState.IDLE;
    }
  }

}