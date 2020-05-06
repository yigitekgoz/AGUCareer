/*
*  giris_yap_widget.dart
*  AguCareer
*
*  Created by [Author].
*  Copyright © 2018 AGUTeam. All rights reserved.
    */

import 'package:aguteamintro_v4/sifremi_unuttum_widget/sifremi_unuttum_widget.dart';
import 'package:aguteamintro_v4/values/values.dart';
import 'package:flutter/material.dart';


class GirisYapWidget extends StatelessWidget {
  
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
              bottom: 0,
              child: Image.asset(
                "assets/images/bg-white-gray.png",
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              left: 0,
              top: 72,
              right: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 48,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          top: 8,
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
                  Container(
                    height: 98,
                    margin: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 300,
                            height: 34,
                            margin: EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Color.fromARGB(255, 138, 86, 172),
                              ),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "  E-posta",
                                contentPadding: EdgeInsets.only(top: 3, right: 2),
                                border: InputBorder.none,
                              ),
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 19, 50),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                              maxLines: 1,
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              autocorrect: false,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 34,
                          margin: EdgeInsets.symmetric(horizontal: 14),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 300,
                                height: 34,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Color.fromARGB(255, 138, 86, 172),
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(1)),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "  Şifre",
                                    contentPadding: EdgeInsets.only(top: 3, right: 2),
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 52,
                    margin: EdgeInsets.only(left: 24, top: 63, right: 24),
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
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 200,
                      height: 25,
                      margin: EdgeInsets.only(top: 31),
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