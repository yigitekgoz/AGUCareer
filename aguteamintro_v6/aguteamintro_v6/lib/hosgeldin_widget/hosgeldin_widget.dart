/*
*  hosgeldin_widget.dart
*  AguCareer
*
*  Created by [Author].
*  Copyright © 2018 AGUTeam. All rights reserved.
    */

import 'package:aguteamintro_v6/giris_yap_widget/giris_yap_widget.dart';
import 'package:aguteamintro_v6/values/values.dart';
import 'package:flutter/material.dart';


class HosgeldinWidget extends StatelessWidget {
  
  void onButtonTwoPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => GirisYapWidget()));
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 36, 19, 50),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: -70,
              top: -51,
              right: -70,
              bottom: -51,
              child: Image.asset(
                "assets/images/background.png",
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              left: 13,
              top: 49,
              right: 12,
              bottom: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Opacity(
                    opacity: 0.9,
                    child: Text(
                      "AGÜ\nKARİYER MERKEZİ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w400,
                        fontSize: 32,
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 110,
                    margin: EdgeInsets.only(left: 11, right: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
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