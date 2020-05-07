/*
*  sifremi_unuttum_widget.dart
*  AguCareer
*
*  Created by [Author].
*  Copyright © 2018 AGUTeam. All rights reserved.
    */

import 'package:aguteamintro_v6/dogrulama_kodu_widget/dogrulama_kodu_widget.dart';
import 'package:aguteamintro_v6/giris_yap_widget/giris_yap_widget.dart';
import 'package:aguteamintro_v6/values/values.dart';
import 'package:flutter/material.dart';


class SifremiUnuttumWidget extends StatelessWidget {
  
  void onArrowLeftPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => GirisYapWidget()));
  
  void onBtnBluePressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => DogrulamaKoduWidget()));
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 241, 240, 242),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: -94,
              right: -5,
              bottom: -94,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.accentText,
                ),
                child: Image.asset(
                  "",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 50,
              child: FlatButton(
                onPressed: () => this.onArrowLeftPressed(context),
                color: Color.fromARGB(255, 36, 19, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                ),
                textColor: Color.fromARGB(255, 0, 0, 0),
                padding: EdgeInsets.all(0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/arrow-left.png",),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 73,
              right: 11,
              bottom: 54,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 44),
                      decoration: BoxDecoration(
                        color: AppColors.primaryBackground,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(16, 0, 0, 0),
                            offset: Offset(0, 12),
                            blurRadius: 16,
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(80)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            height: 80,
                            margin: EdgeInsets.only(left: 13, top: 1, right: 18),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    margin: EdgeInsets.only(top: 23, bottom: 24),
                                    child: Text(
                                      "Şifremi Unuttum",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColors.secondaryText,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 28,
                                        letterSpacing: -0.45,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 40,
                            margin: EdgeInsets.only(left: 42, top: 27, right: 43),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Color.fromARGB(255, 221, 205, 231),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryBackground,
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "  E-posta",
                                      contentPadding: EdgeInsets.only(top: 2, right: 2, bottom: 12),
                                      border: InputBorder.none,
                                    ),
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 36, 19, 50),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                    maxLines: 1,
                                    keyboardType: TextInputType.emailAddress,
                                    textInputAction: TextInputAction.done,
                                    autocorrect: false,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 118,
                      height: 53,
                      margin: EdgeInsets.only(right: 7),
                      child: FlatButton(
                        onPressed: () => this.onBtnBluePressed(context),
                        color: AppColors.accentElement,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        textColor: Color.fromARGB(255, 255, 255, 255),
                        padding: EdgeInsets.all(0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/icons-back-light.png",),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "İleri",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.primaryText,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ],
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