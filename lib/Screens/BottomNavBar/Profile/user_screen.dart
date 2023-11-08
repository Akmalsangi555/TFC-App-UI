import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import '../../../Widgets/colors.dart';
import '../Drawer/drawer_menu.dart';
import 'user_profile_page.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homeBgColor,
      body: const ZoomDrawer(
        angle: 0.0,
        mainScreen: UserProfilePage(),
        menuScreen: DrawerMenuPage(),
      ),
    );
  }
}
