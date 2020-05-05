/*
*  yeni_sifre_widget.dart
*  AguCareer
*
*  Created by [Author].
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:agu_career/values/values.dart';
import 'package:flutter/material.dart';


class YeniSifreWidget extends StatelessWidget {
  
  void onButtonsLargeGreenPressed(BuildContext context) {
  
  }
  
  void onArrowLeftPressed(BuildContext context) {
  
  }
  
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
              top: 62,
              right: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 58,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          left: 0,
                          top: 10,
                          right: 0,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned(
                                child: Container(
                                  width: 167,
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
                        Positioned(
                          left: 19,
                          top: 0,
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
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(left: 24, top: 57, right: 24),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            top: 0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  height: 98,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Container(
                                        height: 32,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              right: 0,
                                              bottom: 0,
                                              child: Container(
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
                                            ),
                                            Positioned(
                                              left: 4,
                                              top: 2,
                                              child: Opacity(
                                                opacity: 0.32,
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                    hintText: "Yeni Şifre",
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
                                                width: 284,
                                                height: 28,
                                                child: Opacity(
                                                  opacity: 0.32,
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                      hintText: "Yeni Şifre Tekrar",
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
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 0,
                            right: 0,
                            bottom: 0,
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