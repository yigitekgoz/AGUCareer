import 'package:agucareer/models/user_model.dart';
import 'package:flutter/material.dart';

abstract class AuthService {
  Future<User> currentUser();
  Future<User> signIn({@required String email, @required String password});
  Future<bool> signOut();
  Future<bool> resetPassword({@required String email});
}
