import 'package:agucareer/values/values.dart';
import 'package:flutter/material.dart';


class ProfilWidget extends StatelessWidget {
  
  void onFotografiDegistirPressed(BuildContext context) {
  
  }
  
  void onButtonPressed(BuildContext context) {
  
  }
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 247, 247, 250),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 385,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 385,
                    child: Image.asset(
                      "assets/images/photo.png",
                      fit: BoxFit.none,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 1, top: 4),
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: 93,
                          height: 13,
                          margin: EdgeInsets.only(top: 5),
                          child: FlatButton(
                            onPressed: () => this.onFotografiDegistirPressed(context),
                            color: Color.fromARGB(0, 0, 0, 0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(0)),
                            ),
                            textColor: Color.fromARGB(255, 120, 132, 158),
                            padding: EdgeInsets.all(0),
                            child: Text(
                              "Fotoğrafı Değiştir",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(255, 120, 132, 158),
                                fontWeight: FontWeight.w400,
                                fontSize: 11,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 180,
                          height: 72,
                          margin: EdgeInsets.only(top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 57),
                                child: Text(
                                  "Fatma Gül",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: AppColors.accentText,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 28,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  margin: EdgeInsets.only(top: 4),
                                  child: Text(
                                    "Mentör",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 153, 143, 162),
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
                      Container(
                        height: 135,
                        margin: EdgeInsets.only(left: 21, top: 50, right: 9),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                margin: EdgeInsets.only(left: 3),
                                child: Text(
                                  "Hakkımda",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: AppColors.accentText,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 73,
                              margin: EdgeInsets.only(top: 27, right: 17),
                              child: Text(
                                "İsmim Fatma Gül. Erciyes Üniversitesi Elektrik Elektronik Bölümü Mezunuyum. Yaklaşık 9 yıldız özel sektörde 7 yıldır da Kayseri ulaşımda Mühendis Olarak Çalışmaktayım. ",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromARGB(255, 129, 120, 137),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 153,
                            margin: EdgeInsets.only(top: 74, right: 23, bottom: 30),
                            child: FlatButton(
                              onPressed: () => this.onButtonPressed(context),
                              color: AppColors.accentElement,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(0)),
                              ),
                              textColor: Color.fromARGB(255, 255, 255, 255),
                              padding: EdgeInsets.all(0),
                              child: Text(
                                "Profili Duzenle",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.primaryText,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ),
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
    );
  }
}