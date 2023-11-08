import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import '../../../Widgets/colors.dart';
import 'meal_page.dart';
import '../Drawer/drawer_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kRed,
      body: const ZoomDrawer(
        angle: 0.0,
        mainScreen: MealPage(),
        menuScreen: DrawerMenuPage(),
      ),
    );
  }
}