import 'package:agucareer/ana_sayfa_widget/avatar_item_widget.dart';
import 'package:agucareer/ana_sayfa_widget/avatar_three_item_widget.dart';
import 'package:agucareer/ana_sayfa_widget/avatar_three_two_item_widget.dart';
import 'package:agucareer/ana_sayfa_widget/avatar_two_item_widget.dart';
import 'package:agucareer/values/values.dart';
import 'package:flutter/material.dart';


class AnaSayfaWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 156,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 156,
                      decoration: BoxDecoration(
                        color: AppColors.primaryBackground,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 205,
                            margin: EdgeInsets.only(bottom: 14),
                            child: Text(
                              "ANA SAYFA",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.primaryText,
                                fontWeight: FontWeight.w400,
                                fontSize: 26,
                                letterSpacing: -0.41786,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 33,
                    top: 56,
                    right: 22,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: 18,
                              margin: EdgeInsets.only(top: 1, right: 26),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    right: 0,
                                    bottom: 0,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: [
                                        Container(
                                          height: 3,
                                          child: Image.asset(
                                            "assets/images/open-menu.png",
                                            fit: BoxFit.none,
                                          ),
                                        ),
                                        Spacer(),
                                        Container(
                                          height: 3,
                                          child: Image.asset(
                                            "assets/images/open-menu.png",
                                            fit: BoxFit.none,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    right: 0,
                                    child: Image.asset(
                                      "assets/images/open-menu.png",
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 205,
                            margin: EdgeInsets.only(top: 110),
                            child: Text(
                              "Bağlantılarım",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.w400,
                                fontSize: 23,
                                letterSpacing: -0.36964,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 20,
                            height: 24,
                            child: Image.asset(
                              "assets/images/group-1858.png",
                              fit: BoxFit.none,
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
              height: 120,
              margin: EdgeInsets.only(left: 25, top: 58, right: 25),
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 120,
                  childAspectRatio: 1.55844,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) => AvatarItemWidget(),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 59, top: 17, right: 58),
              child: Text(
                "İlerleme Durumum",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.w400,
                  fontSize: 23,
                  letterSpacing: -0.36964,
                ),
              ),
            ),
            Container(
              height: 119,
              margin: EdgeInsets.only(left: 16, top: 35, right: 16),
              decoration: BoxDecoration(
                color: AppColors.ternaryBackground,
                boxShadow: [
                  Shadows.secondaryShadow,
                ],
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 99,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                "Öğrenci 1",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: AppColors.primaryText,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  letterSpacing: -0.25714,
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 86,
                            margin: EdgeInsets.only(top: 10),
                            child: Image.asset(
                              "assets/images/group-785.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 261,
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Öğrenci 2",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: AppColors.primaryText,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                letterSpacing: -0.25714,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                height: 14,
                                margin: EdgeInsets.only(left: 94, right: 20, bottom: 3),
                                child: Image.asset(
                                  "assets/images/group-786.png",
                                  fit: BoxFit.contain,
                                ),
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
                      width: 243,
                      margin: EdgeInsets.only(top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                "Öğrenci 3",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: AppColors.primaryText,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  letterSpacing: -0.25714,
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 14,
                            margin: EdgeInsets.only(left: 178, right: 15, bottom: 2),
                            child: Image.asset(
                              "assets/images/group-787.png",
                              fit: BoxFit.contain,
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