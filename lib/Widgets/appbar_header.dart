import 'package:flutter/material.dart';
import 'colors.dart';

Widget myAppBarHeader(BuildContext context, backImage,) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    child: Row(
      children: [
        GestureDetector(
          onTap: () {
            print("clicked");
            Navigator.pop(context);
          },
          child: Image.asset(backImage,
            height: 25, width: 25,),
        ),
        const SizedBox(width: 20,),
        searchFoodWidget(context),
      ],
    ),
  );
}

Widget searchFoodWidget(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
    height: MediaQuery.of(context).size.height* 0.06,
    width: MediaQuery.of(context).size.width *0.75,
    decoration: BoxDecoration(
      color: kWhite,
      borderRadius: BorderRadius.circular(40),
    ),
    child: TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        // prefixIcon: const Icon(Icons.search, color: Colors.black),
        hintText: "Search food",
        hintStyle: TextStyle(
          color: Colors.grey[200],
          fontSize: 13,
        ),
      ),
    ),
  );
}