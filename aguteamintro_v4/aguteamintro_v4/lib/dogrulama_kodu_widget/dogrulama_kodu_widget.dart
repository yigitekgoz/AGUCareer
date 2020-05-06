/*
*  dogrulama_kodu_widget.dart
*  AguCareer
*
*  Created by [Author].
*  Copyright © 2018 AGUTeam. All rights reserved.
    */

import 'package:aguteamintro_v4/values/values.dart';
import 'package:aguteamintro_v4/yeni_sifre_widget/yeni_sifre_widget.dart';
import 'package:flutter/material.dart';


class DogrulamaKoduWidget extends StatelessWidget {
  
  void onResendCodePressed(BuildContext context) {
  
  }
  
  void onViewPressed(BuildContext context) => Navigator.pop(context);
  
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
              height: 120,
              margin: EdgeInsets.only(left: 48, top: 121, right: 48),
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 260,
                      margin: EdgeInsets.only(bottom: 59),
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
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
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
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 80,
                height: 44,
                margin: EdgeInsets.only(top: 51),
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
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 104,
                height: 17,
                margin: EdgeInsets.only(top: 46),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Positioned(
                      left: -120,
                      top: -349,
                      child: FlatButton(
                        onPressed: () => this.onViewPressed(context),
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
            ),
          ],
        ),
      ),
    );
  }
}