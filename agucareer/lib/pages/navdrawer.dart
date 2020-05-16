import 'package:agucareer/viewmodels/user_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NavDrawer extends StatefulWidget {
  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Pratap Kumar"),
              accountEmail: Text("kprathap23@gmail.com"),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/header_background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage("https://randomuser.me/api/portraits/men/46.jpg")),
            ),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Ana Sayfa"),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                leading: Icon(Icons.message),
                title: Text("Mesajlar"),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                leading: Icon(Icons.date_range),
                title: Text("Buluşma Ayarla"),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                leading: Icon(Icons.folder),
                title: Text("Dosyalar"),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                leading: Icon(Icons.assignment),
                title: Text("Anket Doldur"),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                leading: Icon(Icons.person),
                title: Text("Bize Ulaş"),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                leading: Icon(Icons.info),
                title: Text("S.S.S"),

                onTap: () {
                  Navigator.pop(context);
                }),
            Divider(),
            ListTile(
                leading: Icon(Icons.settings),
                title: Text("Ayarlar"),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                leading: Icon(Icons.power_settings_new),
                title: Text("Çıkış Yap"),
                onTap: () {
                  signOut();
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),

      ),
    );
  }

  Future<bool> signOut() async{
    final _userModel = Provider.of<UserModel>(context, listen: false);
    return await _userModel.signOut();
  }
}
