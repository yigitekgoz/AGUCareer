import 'package:agucareer/ana_sayfa_widget/ana_sayfa_widget.dart';
import 'package:agucareer/hosgeldin_widget/hosgeldin_widget.dart';
import 'package:agucareer/profil_widget/profil_widget.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: anasayfa_widget(),
    );
  }
}