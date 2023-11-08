import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import '../../../Widgets/colors.dart';
import '../Drawer/drawer_menu.dart';
import 'user_coupons_list.dart';

class CouponsPage extends StatefulWidget {
  const CouponsPage({Key? key}) : super(key: key);

  @override
  State<CouponsPage> createState() => _CouponsPageState();
}

class _CouponsPageState extends State<CouponsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homeBgColor,
      body: const ZoomDrawer(
        angle: 0.0,
        mainScreen: UserCouponsList(),
        menuScreen: DrawerMenuPage(),
      ),
    );
  }
}
