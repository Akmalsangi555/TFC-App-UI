import 'package:flutter/material.dart';
import 'colors.dart';

Widget myButtonWidget(BuildContext context, buttonText){
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  return Container(
    height: height * 0.07,
    width: width ,
    decoration: BoxDecoration(
        color: kRedLight,
        borderRadius: BorderRadius.circular(20)),
    child: Center(
      child: Text(buttonText, textAlign: TextAlign.center,
          style: TextStyle(color: kWhite, fontSize: 17, fontWeight: FontWeight.w600)),
    ),
  );
}