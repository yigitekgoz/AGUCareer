<<<<<<< HEAD
import 'package:agucareer/locator.dart';
import 'package:agucareer/pages/landing_page.dart';
import 'package:agucareer/pages/login_page.dart';
import 'package:agucareer/viewmodels/user_model.dart';
=======
import 'package:agucareer/ana_sayfa_widget/ana_sayfa_widget.dart';
import 'package:agucareer/hosgeldin_widget/hosgeldin_widget.dart';
import 'package:agucareer/profil_widget/profil_widget.dart';
>>>>>>> master
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

<<<<<<< HEAD
void main() {
  setupLocator();
  runApp(MyApp());
}
=======

void main() => runApp(MyApp());

>>>>>>> master

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return ChangeNotifierProvider(
        create: (context) => UserModel(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: LandingPage(),
        ));
=======

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: anasayfa_widget(),
    );
>>>>>>> master
  }
}
