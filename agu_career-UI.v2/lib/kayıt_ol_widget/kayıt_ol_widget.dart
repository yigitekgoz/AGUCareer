/*
*  kayıt_ol_widget.dart
*  AguCareer
*
*  Created by [Author].
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:agu_career/giris_yap_widget/giris_yap_widget.dart';
import 'package:agu_career/hosgeldin_widget/hosgeldin_widget.dart';
import 'package:agu_career/values/values.dart';
import 'package:flutter/material.dart';


class KayıtOlWidget extends StatelessWidget {
  
  void onGirisYapPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => GirisYapWidget()));
  
  void onButtonsLargeBluePressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => HosgeldinWidget()));
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 241, 240, 242),
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    child: Image.asset(
                      "assets/images/bg-4.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 60,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 51,
                          height: 15,
                          child: Opacity(
                            opacity: 0.6,
                            child: FlatButton(
                              onPressed: () => this.onGirisYapPressed(context),
                              color: Color.fromARGB(0, 0, 0, 0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(0)),
                              ),
                              textColor: Color.fromARGB(255, 255, 255, 255),
                              padding: EdgeInsets.all(0),
                              child: Text(
                                "Giriş Yap",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Kayıt Ol",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.primaryText,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            letterSpacing: 0.048,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 92,
              right: -8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 343,
                    height: 271,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 327,
                            height: 271,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(31, 0, 0, 0),
                                  offset: Offset(0, 3),
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                            child: Image.asset(
                              "assets/images/bg.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 34,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                height: 29,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        width: 128,
                                        height: 23,
                                        child: Opacity(
                                          opacity: 0.32,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText: "İsim- Soyisim",
                                              contentPadding: EdgeInsets.all(0),
                                              border: InputBorder.none,
                                            ),
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 36, 19, 50),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),
                                            maxLines: 1,
                                            autocorrect: false,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 1,
                                      margin: EdgeInsets.only(right: 77),
                                      decoration: BoxDecoration(
                                        color: AppColors.primaryElement,
                                        boxShadow: [
                                          Shadows.primaryShadow,
                                        ],
                                        borderRadius: Radii.k0pxRadius,
                                      ),
                                      child: Container(),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 29,
                                margin: EdgeInsets.only(top: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        width: 121,
                                        height: 28,
                                        child: Opacity(
                                          opacity: 0.32,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText: "E-posta",
                                              contentPadding: EdgeInsets.all(0),
                                              border: InputBorder.none,
                                            ),
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 36, 19, 50),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),
                                            maxLines: 1,
                                            keyboardType: TextInputType.emailAddress,
                                            autocorrect: false,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 1,
                                      margin: EdgeInsets.only(right: 77),
                                      decoration: BoxDecoration(
                                        color: AppColors.primaryElement,
                                        boxShadow: [
                                          Shadows.primaryShadow,
                                        ],
                                        borderRadius: Radii.k0pxRadius,
                                      ),
                                      child: Container(),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 29,
                                margin: EdgeInsets.only(top: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        width: 97,
                                        height: 21,
                                        child: Opacity(
                                          opacity: 0.32,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText: "Telefon",
                                              contentPadding: EdgeInsets.all(0),
                                              border: InputBorder.none,
                                            ),
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 36, 19, 50),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),
                                            maxLines: 1,
                                            autocorrect: false,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 1,
                                      margin: EdgeInsets.only(right: 77),
                                      decoration: BoxDecoration(
                                        color: AppColors.primaryElement,
                                        boxShadow: [
                                          Shadows.primaryShadow,
                                        ],
                                        borderRadius: Radii.k0pxRadius,
                                      ),
                                      child: Container(),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: 29,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        width: 89,
                                        height: 28,
                                        child: Opacity(
                                          opacity: 0.32,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              hintText: "Şifre",
                                              contentPadding: EdgeInsets.all(0),
                                              border: InputBorder.none,
                                            ),
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 36, 19, 50),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                            ),
                                            obscureText: true,
                                            maxLines: 1,
                                            autocorrect: false,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 1,
                                      margin: EdgeInsets.only(right: 77),
                                      decoration: BoxDecoration(
                                        color: AppColors.primaryElement,
                                        boxShadow: [
                                          Shadows.primaryShadow,
                                        ],
                                        borderRadius: Radii.k0pxRadius,
                                      ),
                                      child: Container(),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 327,
                    height: 52,
                    child: FlatButton(
                      onPressed: () => this.onButtonsLargeBluePressed(context),
                      color: AppColors.accentElement,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(26)),
                      ),
                      textColor: Color.fromARGB(255, 255, 255, 255),
                      padding: EdgeInsets.all(0),
                      child: Text(
                        "Kayıt Ol",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}