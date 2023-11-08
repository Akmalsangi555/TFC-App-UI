import 'package:flutter/material.dart';
import '../../../../Widgets/colors.dart';
import '../DetailsPage/items_details_page.dart';

Widget allItemsList(BuildContext context) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  return  Container(
    height: height* 0.75,
    color: Colors.transparent,
    child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1/1.3,
          mainAxisSpacing: 0,
          crossAxisSpacing: 0,
        ),
        itemCount: allFoodItemsList.length,
        itemBuilder: (BuildContext context, int index){
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ItemsDetailsPage(
                image: allFoodItemsList[index].foodImage,
                title: allFoodItemsList[index].foodTitle,
                price: allFoodItemsList[index].foodPrice,
              )));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height*0.3,
                width: width*0.3,
                color: Colors.transparent,
                child: Stack(
                  children: [
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(vertical: 20),
                    //   child: Container(
                    //     height: MediaQuery.of(context).size.height * 0.33,
                    //     color: Colors.amber,
                    //   ),
                    // ),
                    Positioned(
                      top: 20,
                      child: Align(
                        // alignment: Alignment.bottomCenter,
                        child: Container(
                          height: height*0.3, width: width*0.4,
                          decoration: BoxDecoration(
                              color: kWhite,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: height*0.1,),
                              Text(allFoodItemsList[index].foodTitle,
                                style: TextStyle(color: kBlack, fontSize: 16),),
                              SizedBox(height: height*0.02,),
                              Text(allFoodItemsList[index].foodPrice,
                                style: TextStyle(color: kRedLight, fontSize: 16),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: width*0.055,
                      top: 0,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(70),
                          child: Image.asset(allFoodItemsList[index].foodImage,
                            height: 120, width: 120, fit: BoxFit.fill,
                          )),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
  );
}

List allFoodItemsList = [
  AllFoodItemsClass("assets/home_page/food_image1.png", "Meat Salad", '10',),
  AllFoodItemsClass("assets/home_page/food_image2.png", "Spicy fish sauce", '10'),
  AllFoodItemsClass("assets/home_page/food_image1.png", "Meat Salad", '10',),
  AllFoodItemsClass("assets/home_page/food_image2.png", "Spicy fish sauce", '10'),
  AllFoodItemsClass("assets/home_page/food_image1.png", "Meat Salad", '10',),
  AllFoodItemsClass("assets/home_page/food_image2.png", "Spicy fish sauce", '10'),
  AllFoodItemsClass("assets/home_page/food_image1.png", "Meat Salad", '10',),
  AllFoodItemsClass("assets/home_page/food_image2.png", "Spicy fish sauce", '10'),
];

class AllFoodItemsClass {
  final String foodImage;
  final String foodTitle;
  final String foodPrice;

  AllFoodItemsClass(this.foodImage, this.foodTitle, this.foodPrice);
}
