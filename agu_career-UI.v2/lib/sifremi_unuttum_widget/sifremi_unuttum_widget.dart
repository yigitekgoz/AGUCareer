/*
*  sifremi_unuttum_widget.dart
*  AguCareer
*
*  Created by [Author].
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:agu_career/values/values.dart';
import 'package:flutter/material.dart';


class SifremiUnuttumWidget extends StatelessWidget {
  
  void onArrowLeftPressed(BuildContext context) {
  
  }
  
  void onBtnBluePressed(BuildContext context) {
  
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      child: Container(
                        width: 413,
                        height: 822,
                        decoration: BoxDecoration(
                          gradient: Gradients.secondaryGradient,
                        ),
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Positioned(
                              top: 0,
                              child: Container(
                                width: 319,
                                height: 568,
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
                                  children: [
                                    Container(
                                      width: 238,
                                      height: 238,
                                      margin: EdgeInsets.only(top: 79),
                                      decoration: BoxDecoration(
                                        color: AppColors.ternaryBackground,
                                        borderRadius: BorderRadius.all(Radius.circular(119)),
                                      ),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Positioned(
                                            child: Opacity(
                                              opacity: 0.28975,
                                              child: Container(
                                                width: 192,
                                                height: 192,
                                                decoration: BoxDecoration(
                                                  color: AppColors.secondaryBackground,
                                                  borderRadius: BorderRadius.all(Radius.circular(96)),
                                                ),
                                                child: Container(),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            child: Opacity(
                                              opacity: 0.99508,
                                              child: Container(
                                                width: 140,
                                                height: 140,
                                                decoration: BoxDecoration(
                                                  color: AppColors.secondaryBackground,
                                                  borderRadius: BorderRadius.all(Radius.circular(70)),
                                                ),
                                                child: Container(),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            child: Image.asset(
                                              "assets/images/compass.png",
                                              fit: BoxFit.none,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 190,
                                      height: 33,
                                      margin: EdgeInsets.only(top: 27),
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
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 66,
                              top: 485,
                              child: Column(
                                children: [
                                  Container(
                                    width: 260,
                                    height: 28,
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryBackground,
                                    ),
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
                                      keyboardType: TextInputType.emailAddress,
                                      textInputAction: TextInputAction.done,
                                      autocorrect: false,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 256,
                                      height: 1,
                                      margin: EdgeInsets.only(left: 7),
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                      child: Container(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 31,
                      top: 76,
                      right: 39,
                      bottom: 120,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(right: 315, bottom: 541),
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
                          ),
                          Container(
                            height: 53,
                            margin: EdgeInsets.only(left: 225),
                            child: FlatButton(
                              onPressed: () => this.onBtnBluePressed(context),
                              color: AppColors.accentElement,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(28)),
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
    );
  }
}