import 'package:flutter/material.dart';
import 'package:tfc_app_ui/Widgets/header_text.dart';
import '../Drawer/menu_drawer.dart';
import 'favorite_items_list.dart';

class MyFavoritePage extends StatefulWidget {
  const MyFavoritePage({Key? key}) : super(key: key);

  @override
  State<MyFavoritePage> createState() => _MyFavoritePageState();
}

class _MyFavoritePageState extends State<MyFavoritePage> {

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

                headingText(context, "Your Favourites"),
                SizedBox(height: height*0.02),
                favoriteItemsList(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
