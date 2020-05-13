import 'package:agucareer/values/values.dart';
import 'package:flutter/material.dart';


class AvatarThreeItemWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
      width: 80,
      height: 98,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 64,
            margin: EdgeInsets.only(left: 11, right: 5),
            child: Image.asset(
              "assets/images/user-photo.png",
              fit: BoxFit.none,
            ),
          ),
          Spacer(),
          Text(
            "Öğrenci 3",
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