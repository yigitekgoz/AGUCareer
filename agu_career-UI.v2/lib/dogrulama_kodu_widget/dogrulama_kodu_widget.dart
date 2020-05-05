/*
*  dogrulama_kodu_widget.dart
*  AguCareer
*
*  Created by [Author].
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:agu_career/values/values.dart';
import 'package:flutter/material.dart';


class DogrulamaKoduWidget extends StatelessWidget {
  
  void onArrowLeftPressed(BuildContext context) {
  
  }
  
  void onResendCodePressed(BuildContext context) {
  
  }
  
  void onButtonsSmallGreenPressed(BuildContext context) {
  
  }
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 241, 240, 242),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 714,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    right: 1,
                    child: Image.asset(
                      "assets/images/bg-3.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: -255,
                    right: 0,
                    bottom: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 79,
                          margin: EdgeInsets.only(left: 36, right: 36, bottom: 29),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                width: 16,
                                margin: EdgeInsets.symmetric(vertical: 32),
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
                              Expanded(
                                flex: 1,
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(left: 19, top: 29),
                                    child: Text(
                                      "Doğrulama Kodu",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 26,
                                        letterSpacing: -0.41786,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              width: 279,
                              margin: EdgeInsets.only(top: 29, bottom: 35),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Positioned(
                                    top: 0,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            width: 260,
                                            margin: EdgeInsets.only(bottom: 48),
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: 57,
                                                  height: 81,
                                                  decoration: BoxDecoration(
                                                    color: Color.fromARGB(255, 255, 255, 255),
                                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                                    children: [
                                                      Expanded(
                                                        flex: 1,
                                                        child: Container(
                                                          margin: EdgeInsets.symmetric(horizontal: 14, vertical: 16),
                                                          child: TextField(
                                                            decoration: InputDecoration(
                                                              hintText: "",
                                                              contentPadding: EdgeInsets.all(0),
                                                              border: InputBorder.none,
                                                            ),
                                                            style: TextStyle(
                                                              color: Color.fromARGB(255, 0, 0, 0),
                                                              fontFamily: "Arial Black",
                                                              fontWeight: FontWeight.w900,
                                                              fontSize: 36,
                                                            ),
                                                            maxLines: 1,
                                                            keyboardType: TextInputType.number,
                                                            textInputAction: TextInputAction.next,
                                                            autocorrect: false,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: 57,
                                                  height: 81,
                                                  margin: EdgeInsets.only(left: 11),
                                                  decoration: BoxDecoration(
                                                    color: Color.fromARGB(255, 255, 255, 255),
                                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        width: 30,
                                                        height: 50,
                                                        child: TextField(
                                                          decoration: InputDecoration(
                                                            hintText: "",
                                                            contentPadding: EdgeInsets.all(0),
                                                            border: InputBorder.none,
                                                          ),
                                                          style: TextStyle(
                                                            color: Color.fromARGB(255, 0, 0, 0),
                                                            fontFamily: "Arial Black",
                                                            fontWeight: FontWeight.w900,
                                                            fontSize: 36,
                                                          ),
                                                          maxLines: 1,
                                                          keyboardType: TextInputType.number,
                                                          textInputAction: TextInputAction.next,
                                                          autocorrect: false,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Spacer(),
                                                Container(
                                                  width: 57,
                                                  height: 81,
                                                  margin: EdgeInsets.only(right: 11),
                                                  decoration: BoxDecoration(
                                                    color: Color.fromARGB(255, 255, 255, 255),
                                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                                    children: [
                                                      Container(
                                                        width: 30,
                                                        height: 50,
                                                        child: TextField(
                                                          decoration: InputDecoration(
                                                            hintText: "",
                                                            contentPadding: EdgeInsets.all(0),
                                                            border: InputBorder.none,
                                                          ),
                                                          style: TextStyle(
                                                            color: Color.fromARGB(255, 0, 0, 0),
                                                            fontFamily: "Arial Black",
                                                            fontWeight: FontWeight.w900,
                                                            fontSize: 36,
                                                          ),
                                                          maxLines: 1,
                                                          keyboardType: TextInputType.number,
                                                          textInputAction: TextInputAction.next,
                                                          autocorrect: false,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: 57,
                                                  height: 81,
                                                  decoration: BoxDecoration(
                                                    color: Color.fromARGB(255, 255, 255, 255),
                                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        width: 30,
                                                        height: 50,
                                                        child: TextField(
                                                          decoration: InputDecoration(
                                                            hintText: "",
                                                            contentPadding: EdgeInsets.all(0),
                                                            border: InputBorder.none,
                                                          ),
                                                          style: TextStyle(
                                                            color: Color.fromARGB(255, 0, 0, 0),
                                                            fontFamily: "Arial Black",
                                                            fontWeight: FontWeight.w900,
                                                            fontSize: 36,
                                                          ),
                                                          maxLines: 1,
                                                          keyboardType: TextInputType.number,
                                                          textInputAction: TextInputAction.next,
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
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: 100,
                                    bottom: 4,
                                    child: FlatButton(
                                      onPressed: () => this.onResendCodePressed(context),
                                      color: Color.fromARGB(0, 0, 0, 0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(0)),
                                      ),
                                      textColor: Color.fromARGB(255, 212, 127, 166),
                                      padding: EdgeInsets.all(0),
                                      child: Text(
                                        "Kodu Tekrar İste",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 212, 127, 166),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 80,
                            height: 44,
                            margin: EdgeInsets.only(top: 35),
                            child: FlatButton(
                              onPressed: () => this.onButtonsSmallGreenPressed(context),
                              color: Color.fromARGB(0, 0, 0, 0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(0)),
                              ),
                              textColor: Color.fromARGB(255, 255, 255, 255),
                              padding: EdgeInsets.all(0),
                              child: Text(
                                "İleri",
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
                        Container(
                          height: 654,
                          margin: EdgeInsets.only(top: 7),
                          decoration: BoxDecoration(
                            color: AppColors.primaryBackground,
                            borderRadius: BorderRadius.all(Radius.circular(80)),
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
    );
  }
}