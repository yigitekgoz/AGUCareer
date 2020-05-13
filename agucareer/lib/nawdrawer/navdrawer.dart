import 'package:agucareer/values/colors.dart';
import 'package:flutter/material.dart';

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
                leading: Icon(Icons.calendar_today),
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
                leading: Icon(Icons.textsms),
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
                title: Text("Bildirimleri Kapat"),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                leading: Icon(Icons.power_settings_new),
                title: Text("Çıkış Yap"),
                onTap: () {
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
}
