import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:tfc_app_ui/Widgets/colors.dart';

import '../bottom_nav_bar_home_page.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: (){
          ZoomDrawer.of(context)!.toggle();
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 0),
          child: Image.asset("assets/home_page/drawer_Vector.png"),
        ),
      );
  }
}

class MenuCrossIcon extends StatelessWidget {
  const MenuCrossIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const BottomNavBarHomePage()));
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 0),
          child: Container(
              height: 40, width: 40,
              color: Colors.transparent,
              child: Icon(Icons.close_outlined, color: kBlack,)),
        ),
      );
  }
}
