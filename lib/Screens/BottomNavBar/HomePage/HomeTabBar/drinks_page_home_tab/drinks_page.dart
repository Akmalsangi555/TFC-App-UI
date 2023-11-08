import 'package:flutter/material.dart';
import 'package:tfc_app_ui/Widgets/colors.dart';
import '../../DetailsPage/items_details_page.dart';

class DrinksPage extends StatefulWidget {
  const DrinksPage({Key? key}) : super(key: key);

  @override
  State<DrinksPage> createState() => _DrinksPageState();
}

class _DrinksPageState extends State<DrinksPage> {

  @override
  Widget build(BuildContext context) {

    return foodList();
  }

  Widget foodList(){
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height*0.35,
      color: Colors.transparent,
      child: ListView.builder(
        itemCount: foodItemsList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ItemsDetailsPage(
                image: foodItemsList[index].foodImage,
                title: foodItemsList[index].foodTitle,
                price: foodItemsList[index].foodPrice,

              )));
            },
            child: Container(
              height: height*0.3,
              width: width*0.4,
              color: Colors.transparent,
              child: Stack(
                children: [
                  Positioned(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: height*0.2, width: width,
                        decoration: BoxDecoration(
                            color: kWhite,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: height*0.1,),
                            Text(foodItemsList[index].foodTitle, style: TextStyle(color: kBlack, fontSize: 16),),
                            SizedBox(height: height*0.02,),
                            Text(foodItemsList[index].foodPrice, style: TextStyle(color: kRedLight, fontSize: 16),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: width*0.055,
                    top: 2,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(70),
                        child: Image.asset(foodItemsList[index].foodImage,
                          height: 120, width: 120,
                        )),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      ),
    );
  }
}

List foodItemsList = [
  FoodItemsClass("assets/home_page/food_image1.png", "Meat Salad", '10',),
  FoodItemsClass("assets/home_page/food_image2.png", "Spicy fish sauce", '10',),
  FoodItemsClass("assets/home_page/food_image1.png", "Meat Salad", '10',),
  FoodItemsClass("assets/home_page/food_image2.png", "Spicy fish sauce", '10',),
];

class FoodItemsClass {
  final String foodImage;
  final String foodTitle;
  final String foodPrice;

  FoodItemsClass(this.foodImage, this.foodTitle, this.foodPrice);
}