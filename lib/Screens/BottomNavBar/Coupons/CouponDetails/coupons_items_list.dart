import 'package:flutter/material.dart';
import '../../../../Widgets/colors.dart';

Widget couponsItemsList(BuildContext context) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  return  Container(
    height: height* 0.65,
    color: Colors.transparent,
    child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: allCouponsItemsList.length,
        itemBuilder: (BuildContext context, int index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.transparent,
              height: height*0.14,
              width: width,
              child: Stack(
                children: [
                  Container(
                    height: height*0.12,
                    decoration: BoxDecoration(
                        color: kWhite,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: ListTile(
                        leading: CircleAvatar(
                            backgroundImage: Image.asset(allCouponsItemsList[index].foodImage).image,
                        radius: 35,),
                        title: Text(allCouponsItemsList[index].foodTitle,
                          style: TextStyle(color: kBlack, fontSize: 22, fontWeight: FontWeight.w100, ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 05),
                          child: Text(allCouponsItemsList[index].foodPrice,
                            style: TextStyle(color: kRedLight, fontSize: 15, fontWeight: FontWeight.w100,)
                          ),
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    bottom: 02,
                    right: 20,
                    child: Container(
                      height: 40, width: 40,
                      decoration: BoxDecoration(
                          color: const Color(0xffDF2C2C),
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Image.asset("assets/coupons/cart_image.png"),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
  );
}

List allCouponsItemsList = [
  AllCouponsItemsClass("assets/home_page/food_image1.png", "Veggie tomato mix", '10',),
  AllCouponsItemsClass("assets/home_page/food_image2.png", "Veggie tomato mix", '10'),
  AllCouponsItemsClass("assets/home_page/food_image1.png", "Meat Salad", '10',),
  AllCouponsItemsClass("assets/home_page/food_image2.png", "Spicy fish sauce", '10'),
  AllCouponsItemsClass("assets/home_page/food_image1.png", "Meat Salad", '10',),
  AllCouponsItemsClass("assets/home_page/food_image2.png", "Spicy fish sauce", '10'),
  AllCouponsItemsClass("assets/home_page/food_image1.png", "Meat Salad", '10',),
  AllCouponsItemsClass("assets/home_page/food_image2.png", "Spicy fish sauce", '10'),
];

class AllCouponsItemsClass {
  final String foodImage;
  final String foodTitle;
  final String foodPrice;

  AllCouponsItemsClass(this.foodImage, this.foodTitle, this.foodPrice);
}
