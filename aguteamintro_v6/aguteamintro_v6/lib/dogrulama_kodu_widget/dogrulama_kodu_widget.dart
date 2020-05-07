/*
*  dogrulama_kodu_widget.dart
*  AguCareer
*
*  Created by .
*  Copyright © 2018 AGUTeam. All rights reserved.
    */

import 'package:aguteamintro_v6/values/values.dart';
import 'package:aguteamintro_v6/yeni_sifre_widget/yeni_sifre_widget.dart';
import 'package:flutter/material.dart';


class DogrulamaKoduWidget extends StatelessWidget {

  void onViewTwoPressed(BuildContext context) {

  }

  void onResendCodePressed(BuildContext context) {

  }

  void onButtonsSmallGreenPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => YeniSifreWidget()));

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 230, 194, 211),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 50,
              margin: EdgeInsets.only(left: 4, top: 60, right: 73),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 48,
                      height: 50,
                      child: FlatButton(
                        onPressed: () => this.onViewTwoPressed(context),
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
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(left: 21),
                      child: Text(
                        "DOĞRULAMA KODU",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w400,
                          fontSize: 32,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 81,
              margin: EdgeInsets.only(left: 58, top: 26, right: 58),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 81,
                      margin: EdgeInsets.only(right: 11),
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
                              margin: EdgeInsets.symmetric(horizontal: 11, vertical: 16),
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
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 81,
                      margin: EdgeInsets.symmetric(horizontal: 11),
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
                              margin: EdgeInsets.symmetric(horizontal: 11, vertical: 16),
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
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 81,
                      margin: EdgeInsets.symmetric(horizontal: 11),
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
                              margin: EdgeInsets.symmetric(horizontal: 11, vertical: 16),
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
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 81,
                      margin: EdgeInsets.only(left: 11),
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
                              margin: EdgeInsets.only(left: 14, top: 16, right: 9, bottom: 16),
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
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 279,
                height: 16,
                margin: EdgeInsets.only(top: 59),
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
            ),
            Container(
              height: 44,
              margin: EdgeInsets.only(left: 138, top: 24, right: 138),
              child: FlatButton(
                onPressed: () => this.onButtonsSmallGreenPressed(context),
                color: Color.fromARGB(0, 0, 0, 0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(0)),
                ),
                textColor: Color.fromARGB(255, 255, 255, 255),
                padding: EdgeInsets.all(0),
                highlightColor: Color.fromARGB(255, 212, 127, 166),
                child: Text(
                  "İleri",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.w400,
                    fontSize: 26
                    ,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}