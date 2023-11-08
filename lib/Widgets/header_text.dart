
import 'package:flutter/material.dart';

Widget headingText(BuildContext context, headerText) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  return Container(
    width: width*0.7,
    color: Colors.transparent,
    child: Text(headerText,
      style: const TextStyle(
        fontSize: 34, fontWeight: FontWeight.w400, fontFamily: "Inter"),
    ),
  );
}