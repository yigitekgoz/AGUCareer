import 'package:agucareerv10/hosgeldin_widget/hosgeldin_widget.dart';
import 'package:agucareerv10/profil_duzenle_widget/profil_duzenle_widget.dart';
import 'package:agucareerv10/profil_widget/profil_widget.dart';
import 'package:agucareerv10/sifremi_unuttum_widget/sifremi_unuttum_widget.dart';
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