import 'package:flutter/material.dart';
import '../Drawer/menu_drawer.dart';
import 'home_page_tab_bar.dart';

class MealPage extends StatefulWidget {
  const MealPage({Key? key}) : super(key: key);

  @override
  State<MealPage> createState() => _MealPageState();
}

class _MealPageState extends State<MealPage> {

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        leading: Padding(
          padding: EdgeInsets.only(top: height*0.045,),
          child: const MenuDrawer(),
        ),
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: EdgeInsets.only(top: height*0.045, right: width*0.05),
            child: Image.asset("assets/home_page/cart_image.png"),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width*0.07),
        child: SingleChildScrollView(
          child: Container(
            height: height*0.9,
            color: Colors.transparent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height*0.12),

                Container(
                  width: width*0.5 ,
                  color: Colors.transparent,
                  child: const Text(
                    "Delicious food for you",
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: height*0.03),
                searchFoodWidget(context),
                SizedBox(height: height*0.035),

                const HomePageTabBar(),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget searchFoodWidget(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      height: MediaQuery.of(context).size.height* 0.06,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: const Icon(Icons.search, color: Colors.black),
          hintText: "Search",
          hintStyle: TextStyle(
            color: Colors.grey[200],
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}

class RatingCurve extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double width = size.width;
    double height = size.height;
    path.lineTo(0.0, height);
    path.quadraticBezierTo(width * 0.5, height - 20, width, height);
    path.lineTo(width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
