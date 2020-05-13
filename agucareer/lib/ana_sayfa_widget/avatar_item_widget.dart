import 'package:agucareer/values/values.dart';
import 'package:flutter/material.dart';


class AvatarItemWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
      width: 77,
      height: 98,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 64,
            margin: EdgeInsets.only(left: 11, right: 2),
            child: Image.asset(
              "assets/images/user-photo.png",
              fit: BoxFit.none,
            ),
          ),
          Spacer(),
          Text(
            "Öğrenci 1",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: AppColors.secondaryText,
              fontWeight: FontWeight.w400,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}