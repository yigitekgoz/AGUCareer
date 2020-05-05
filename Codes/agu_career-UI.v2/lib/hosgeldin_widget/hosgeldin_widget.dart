/*
*  hosgeldin_widget.dart
*  AguCareer
*
*  Created by [Author].
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:agu_career/giris_yap_widget/giris_yap_widget.dart';
import 'package:agu_career/kayit_ol_widget/kayit_ol_widget.dart';
import 'package:agu_career/values/values.dart';
import 'package:flutter/material.dart';


class HosgeldinWidget extends StatelessWidget {

  void onButtonPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => KayitOlWidget()));

  void onButtonTwoPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => GirisYapWidget()));

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 36, 19, 50),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 514,
              height: 914,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    right: 0,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 414,
                          height: 900,
                          child: Image.asset(
                            "assets/images/background.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 71,
                    top: 130,
                    right: 68,
                    bottom: 122,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "AGÜ\nKARİYER MERKEZİ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.w400,
                            fontSize: 32,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.only(top: 466),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    width: 327,
                                    height: 52,
                                    child: FlatButton(
                                      onPressed: () => this.onButtonTwoPressed(context),
                                      color: AppColors.secondaryElement,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(26)),
                                      ),
                                      textColor: Color.fromARGB(255, 255, 255, 255),
                                      padding: EdgeInsets.all(0),
                                      child: Text(
                                        "GİRİŞ YAP",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 255, 255, 255),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  height: 52,
                                  margin: EdgeInsets.only(left: 21, right: 27, bottom: 5),
                                  child: FlatButton(
                                    onPressed: () => this.onButtonPressed(context),
                                    color: AppColors.accentElement,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(26)),
                                    ),
                                    textColor: Color.fromARGB(255, 255, 255, 255),
                                    padding: EdgeInsets.all(0),
                                    child: Text(
                                      "KAYIT OL",
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
    );
  }
}