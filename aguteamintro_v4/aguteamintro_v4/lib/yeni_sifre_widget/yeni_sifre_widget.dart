/*
*  yeni_sifre_widget.dart
*  AguCareer
*
*  Created by [Author].
*  Copyright © 2018 AGUTeam. All rights reserved.
    */

import 'package:aguteamintro_v4/giris_yap_widget/giris_yap_widget.dart';
import 'package:aguteamintro_v4/values/values.dart';
import 'package:flutter/material.dart';


class YeniSifreWidget extends StatelessWidget {
  
  void onArrowLeftPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => GirisYapWidget()));
  
  void onButtonsLargeGreenPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => GirisYapWidget()));
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              child: Image.asset(
                "assets/images/bg-white-gray.png",
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              left: 0,
              top: 49,
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
                          left: 19,
                          top: 13,
                          child: FlatButton(
                            onPressed: () => this.onArrowLeftPressed(context),
                            color: Color.fromARGB(0, 0, 0, 0),
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
                          left: 0,
                          top: 0,
                          right: 0,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned(
                                top: 8,
                                bottom: 8,
                                child: Container(
                                  width: 167,
                                  decoration: BoxDecoration(
                                    color: AppColors.secondaryElement,
                                    borderRadius: BorderRadius.all(Radius.circular(16)),
                                  ),
                                  child: Container(),
                                ),
                              ),
                              Positioned(
                                child: Text(
                                  "Şifremi Değiştir",
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
                      ],
                    ),
                  ),
                  Container(
                    height: 98,
                    margin: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 30,
                          margin: EdgeInsets.symmetric(horizontal: 24),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Color.fromARGB(255, 138, 86, 172),
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "  Yeni Şifre",
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
                        Spacer(),
                        Container(
                          height: 30,
                          margin: EdgeInsets.symmetric(horizontal: 22),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Color.fromARGB(255, 138, 86, 172),
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "  Yeni Şifre Tekrar",
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
                  Container(
                    height: 52,
                    margin: EdgeInsets.only(left: 24, top: 72, right: 24),
                    child: FlatButton(
                      onPressed: () => this.onButtonsLargeGreenPressed(context),
                      color: AppColors.secondaryElement,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(26)),
                      ),
                      textColor: Color.fromARGB(255, 255, 255, 255),
                      padding: EdgeInsets.all(0),
                      child: Text(
                        "Bitir",
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