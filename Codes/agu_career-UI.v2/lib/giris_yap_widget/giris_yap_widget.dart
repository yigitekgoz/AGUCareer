/*
*  giris_yap_widget.dart
*  AguCareer
*
*  Created by [Author].
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:agu_career/kayit_ol_widget/kayit_ol_widget.dart';
import 'package:agu_career/sifremi_unuttum_widget/sifremi_unuttum_widget.dart';
import 'package:agu_career/values/values.dart';
import 'package:flutter/material.dart';


class GirisYapWidget extends StatelessWidget {
  
  void onKayitOlPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => KayitOlWidget()));
  
  void onButtonsLargeGreenPressed(BuildContext context) {
  
  }
  
  void onSifremiUnuttumPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => SifremiUnuttumWidget()));
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: Image.asset(
                "assets/images/bg-white-gray.png",
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              top: 177,
              bottom: 375,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 375,
                      height: 48,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            right: 0,
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Positioned(
                                  left: 93,
                                  child: Container(
                                    width: 81,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      color: AppColors.secondaryElement,
                                      borderRadius: BorderRadius.all(Radius.circular(16)),
                                    ),
                                    child: Container(),
                                  ),
                                ),
                                Positioned(
                                  left: 108,
                                  child: Text(
                                    "Giriş Yap",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      letterSpacing: 0.048,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Opacity(
                              opacity: 0.6,
                              child: FlatButton(
                                onPressed: () => this.onKayitOlPressed(context),
                                color: Color.fromARGB(0, 0, 0, 0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(0)),
                                ),
                                textColor: Color.fromARGB(255, 153, 143, 162),
                                padding: EdgeInsets.all(0),
                                child: Text(
                                  "Kayıt Ol",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 153, 143, 162),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 98,
                    margin: EdgeInsets.only(top: 57),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 32,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: 303,
                                  height: 24,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          width: 2,
                                          height: 24,
                                          decoration: BoxDecoration(
                                            color: AppColors.accentElement,
                                          ),
                                          child: Container(),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          width: 299,
                                          height: 22,
                                          margin: EdgeInsets.only(left: 2, top: 2),
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
                                              autocorrect: false,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: 2,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 53, 38, 65),
                                  boxShadow: [
                                    Shadows.primaryShadow,
                                  ],
                                  borderRadius: BorderRadius.all(Radius.circular(1)),
                                ),
                                child: Container(),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 29,
                          margin: EdgeInsets.only(top: 37),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width: 282,
                                  height: 25,
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
                                      maxLines: 1,
                                      autocorrect: false,
                                    ),
                                  ),
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: 1,
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
                  Container(
                    width: 327,
                    height: 52,
                    margin: EdgeInsets.only(top: 64),
                    child: FlatButton(
                      onPressed: () => this.onButtonsLargeGreenPressed(context),
                      color: AppColors.secondaryElement,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(26)),
                      ),
                      textColor: Color.fromARGB(255, 255, 255, 255),
                      padding: EdgeInsets.all(0),
                      child: Text(
                        "Giriş",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 15,
                    margin: EdgeInsets.only(left: 117, top: 31, right: 117),
                    child: FlatButton(
                      onPressed: () => this.onSifremiUnuttumPressed(context),
                      color: Color.fromARGB(0, 0, 0, 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                      ),
                      textColor: Color.fromARGB(255, 138, 86, 172),
                      padding: EdgeInsets.all(0),
                      child: Text(
                        "Şifremi Unuttum",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromARGB(255, 138, 86, 172),
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
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