/*
*  main.dart
*  AguCareer
*
*  Created by [Author].
*  Copyright © 2018 AGUTeam. All rights reserved.
    */

import 'package:aguteamintro_v6/dogrulama_kodu_widget/dogrulama_kodu_widget.dart';
import 'package:flutter/material.dart';

import 'hosgeldin_widget/hosgeldin_widget.dart';

void main() => runApp(App());


class App extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      home: HosgeldinWidget(),
    );
  }
}