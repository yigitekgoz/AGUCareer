import 'package:agucareerv10/profil_duzenle_widget/profil_duzenle_widget.dart';
import 'package:agucareerv10/profil_widget/profil_widget.dart';
import 'package:agucareerv10/sifremi_unuttum_widget/sifremi_unuttum_widget.dart';
import 'package:agucareerv10/values/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../values/constants.dart';
import 'package:firebase_auth/firebase_auth.dart'; //for firebase

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance; //for firebase login
  String _mail = "";
  String _pass = "";

  bool _rememberMe = true;

  void onSifremiUnuttumPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => SifremiUnuttumWidget()));

  Widget _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'E-posta',
          style: whiteTextStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: secondBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            onChanged: (String str){
              _mail = str;
            },
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              hintText: 'E-postanı Gir',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Şifre',
          style: whiteTextStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: secondBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            onChanged: (String str){
              _pass = str;
            },
            obscureText: true,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.white,
              ),
              hintText: 'Şifreni Gir',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildForgotPasswordBtn() {
    return Container(
      alignment: Alignment.center,
      child: FlatButton(
        onPressed: () => this.onSifremiUnuttumPressed(context),
        child: Text(
          'Şifremi Unuttum',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
            fontSize: 15,
          ),
        ),
      ),
    );
  }

  Widget _buildRememberMeCheckbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: _rememberMe,
              checkColor: AppColors.secondaryElement,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  _rememberMe = value;
                });
              },
            ),
          ),
          Text(
            'Beni Hatırla',
            style: whiteTextStyle,
          ),
        ],
      ),
    );
  }

  Widget _buildLoginBtn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        padding: EdgeInsets.all(15.0),
        color: AppColors.mainSecondaryBackground,
        onLongPress: _register,
        onPressed: () => this._login(context),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Text(
          'GİRİŞ',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.mainBackground
                ),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.0,
                    vertical: 90.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Kullanıcı Girişi',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 50.0),
                      _buildEmailTF(),
                      SizedBox(height: 30.0),
                      _buildPasswordTF(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _buildRememberMeCheckbox(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _buildLoginBtn(context),
                      _buildForgotPasswordBtn(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _register() async {
    var authUser = await _auth
        .createUserWithEmailAndPassword(email: _mail, password: _pass)
        .catchError((e) => debugPrint('firebaseError' + e.toString()));

    var firebaseUser = authUser.user;
    if(firebaseUser != null){
      if(!firebaseUser.isEmailVerified){
        firebaseUser.sendEmailVerification().then((data){
          _auth.signOut();
        });
      } else{
        debugPrint("new user created: ${firebaseUser.email}, ${firebaseUser.isEmailVerified}");
      }
    }
  }

  void _login(BuildContext context) {
    _auth.signInWithEmailAndPassword(email: _mail, password: _pass).then((user){
      if(user.user.isEmailVerified){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilDuzenleWidget()));
      } else{
        //email verification is required
        _auth.signOut();
      }
    }).catchError((e) => debugPrint('firebaseError ${e.toString()}'));
  }
}