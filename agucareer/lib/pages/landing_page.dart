import 'package:agucareer/pages/ana_sayfa_widget.dart';
import 'package:agucareer/pages/hosgeldin_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:agucareer/viewmodels/user_model.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final _userModel = Provider.of<UserModel>(context);

    if(_userModel.state == ViewState.IDLE){
      if(_userModel.user == null){
        return HosgeldinWidget();
      } else{
        return anasayfa_widget();
      }
    } else {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }


  }

}