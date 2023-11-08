import 'package:flutter/material.dart';
import '../../../../Widgets/colors.dart';

Widget favoriteItemsList(BuildContext context) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  return  Container(
    height: height* 0.7,
    color: Colors.transparent,
    child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: allFavoriteItemsList.length,
        itemBuilder: (BuildContext context, int index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                color: Colors.transparent,
                height: height*0.14,
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
                            backgroundImage: Image.asset(allFavoriteItemsList[index].foodImage).image,
                        radius: 35,),
                        title: Text(allFavoriteItemsList[index].foodTitle,
                          style: TextStyle(color: kBlack, fontSize: 22, fontWeight: FontWeight.w100, ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 05),
                          child: Text(allFavoriteItemsList[index].foodPrice,
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
                      child: Icon(Icons.delete_forever_outlined, color: kWhite,),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
  );
}

List allFavoriteItemsList = [
  AllFavoriteItemsClass("assets/home_page/food_image1.png", "Meat Salad", '10',),
  AllFavoriteItemsClass("assets/home_page/food_image2.png", "Spicy fish sauce", '10'),
  AllFavoriteItemsClass("assets/home_page/food_image1.png", "Meat Salad", '10',),
  AllFavoriteItemsClass("assets/home_page/food_image2.png", "Spicy fish sauce", '10'),
  AllFavoriteItemsClass("assets/home_page/food_image1.png", "Meat Salad", '10',),
  AllFavoriteItemsClass("assets/home_page/food_image2.png", "Spicy fish sauce", '10'),
  AllFavoriteItemsClass("assets/home_page/food_image1.png", "Meat Salad", '10',),
  AllFavoriteItemsClass("assets/home_page/food_image2.png", "Spicy fish sauce", '10'),
];

class AllFavoriteItemsClass {
  final String foodImage;
  final String foodTitle;
  final String foodPrice;

  AllFavoriteItemsClass(this.foodImage, this.foodTitle, this.foodPrice);
}
