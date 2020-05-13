import 'package:agucareerv10/giris_yap_widget/giris_yap_widget.dart';
import 'package:agucareerv10/values/values.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HosgeldinWidget extends StatelessWidget {

  void onButtonTwoPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover
          ),
          color: AppColors.mainBackground
        ),

        child: Stack(
          alignment: Alignment.center,
          children: [

            Positioned(
              left: 13,
              top: 79,
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
                        fontFamily: 'OpenSans',
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w800,
                        fontSize: 36,
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
                          child: RaisedButton(
                            color: AppColors.mainSecondaryBackground,
                            splashColor: AppColors.splashButtonColor,
                            onPressed: () => this.onButtonTwoPressed(context),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),

                            ),
                            textColor: Color.fromARGB(255, 255, 255, 255),
                            padding: EdgeInsets.all(0),
                            child: Text(
                              "GİRİŞ YAP",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1.5,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'OpenSans',
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