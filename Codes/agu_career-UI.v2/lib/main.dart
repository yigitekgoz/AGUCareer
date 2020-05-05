/*
*  main.dart
*  AguCareer
*
*  Created by [Author].
*  Copyright © 2018 [Company]. All rights reserved.
    */

import 'package:agu_career/hosgeldin_widget/hosgeldin_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());


class App extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      home: HosgeldinWidget(),
    );
  }
}