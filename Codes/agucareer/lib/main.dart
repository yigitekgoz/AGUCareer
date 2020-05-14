import 'package:agucareerv/hosgeldin_widget/hosgeldin_widget.dart';
import 'package:agucareervprofil_duzenle_widget/profil_duzenle_widget.dart';
import 'package:agucareer/profil_widget/profil_widget.dart';
import 'package:agucareer/sifremi_unuttum_widget/sifremi_unuttum_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: HosgeldinWidget(),
    );
  }
}