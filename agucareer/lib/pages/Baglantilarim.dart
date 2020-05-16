import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Baglantilarim extends StatelessWidget {
  List<baglanti> tumBaglantilar = [];


  Widget build(BuildContext context) {
    baglantiVeri();
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tumBaglantilar.length,
        shrinkWrap: true,
        itemBuilder: (context, index) =>
            Column(
              children: <Widget>[
                GestureDetector(
                  onTap: (){

                  },

                  child :Card(
                      margin: EdgeInsets.only(left: 40),
                      elevation: 0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CircleAvatar(
                            radius:30,
                            backgroundImage: NetworkImage(tumBaglantilar[index]._photo),
                          ),
                          Text(tumBaglantilar[index]._isim),
                        ],
                      )
                  ),
                ),

              ],

            ));
  }

  void baglantiVeri() {
    tumBaglantilar = [
      baglanti(
          "https://cdn1.vectorstock.com/i/1000x1000/77/30/default-avatar-profile-icon-grey-photo-placeholder-vector-17317730.jpg",
          "Raşit Aydın",5,5,27,"Nisan",2017),
      baglanti(
          "https://cdn1.vectorstock.com/i/1000x1000/77/30/default-avatar-profile-icon-grey-photo-placeholder-vector-17317730.jpg",
          "Ediz Kurt",5,5,17,"May",2018),
      baglanti(
          "https://cdn1.vectorstock.com/i/1000x1000/77/30/default-avatar-profile-icon-grey-photo-placeholder-vector-17317730.jpg",
          "Ediz Kurt",5,5,26,"Mart",2019),
      baglanti(
          "https://cdn1.vectorstock.com/i/1000x1000/77/30/default-avatar-profile-icon-grey-photo-placeholder-vector-17317730.jpg",
          "Ediz Kurt",5,5,27,"Nisan",2017)
      // isim ve profil fotosu değişkenleri databaseden veri olarak alınacak. Bu sadece örnektir.
      //Verilerin Çekileceği method baglantiVeri() dir.
    ];
  }

}

class baglanti {
  String _photo;
  String _isim;
  int _kalanBulusma;
  int _kalanAnket;
  int _gun;
  String _ay;
  int _yil;

  baglanti(this._photo, this._isim, this._kalanAnket,this._kalanBulusma,this._gun,this._ay,this._yil);
}