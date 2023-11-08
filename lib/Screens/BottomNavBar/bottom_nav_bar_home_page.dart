import 'package:flutter/material.dart';
import '../../Widgets/bottom_bar.dart';

class BottomNavBarHomePage extends StatefulWidget {
  const BottomNavBarHomePage({Key? key}) : super(key: key);

  @override
  State<BottomNavBarHomePage> createState() => _BottomNavBarHomePageState();
}

class _BottomNavBarHomePageState extends State<BottomNavBarHomePage> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
