import 'package:agucareer/values/values.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class profil_widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Card(
                color: Colors.white,
                elevation: 0,
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          "https://cdn1.vectorstock.com/i/1000x1000/77/30/default-avatar-profile-icon-grey-photo-placeholder-vector-17317730.jpg"),
                    ),
                    Text("Değiştir",
                        style: TextStyle(color: Colors.grey.shade600)),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.fromLTRB(20, 20, 0, 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Muhammet Raşit Aydın",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 26),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "Mentor",
                            style: TextStyle(color: Colors.grey.shade600),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "Kayseri Ulaşım",
                            style: TextStyle(color: Colors.grey.shade600),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Colors.purple.shade900,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(
                              Icons.message,
                              color: Colors.white,
                            ),
                            Text(
                              "Mesaj At",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )),
                  )
                ],
              ),
              Container(
                height: 250,
                width: 275,
                padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  color: Colors.purple.shade900,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "HAKKIMDA",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          padding: EdgeInsets.all(13),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            color: Colors.blue,
                          ),
                          child: Text(
                            "Mühendis",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "lajdflkjasflajflajflkajflkjalfjalfmlamfgilsdgjlpijadfhk,hdşklh,kfsaa",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
