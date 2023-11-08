import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import '../../../Widgets/colors.dart';
import '../Drawer/drawer_menu.dart';
import 'my_favorite_page.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homeBgColor,
      body: const ZoomDrawer(
        angle: 0.0,
        mainScreen: MyFavoritePage(),
        menuScreen: DrawerMenuPage(),
      ),
    );
  }
}
