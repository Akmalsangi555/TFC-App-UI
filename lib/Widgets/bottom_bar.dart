import 'package:flutter/material.dart';
import '../Screens/BottomNavBar/Coupons/coupons_page.dart';
import '../Screens/BottomNavBar/Favorite/favorite_screen.dart';
import '../Screens/BottomNavBar/HomePage/home_page.dart';
import '../Screens/BottomNavBar/Profile/user_screen.dart';
import 'colors.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {

  @override
  void initState() {
    super.initState();
  }

  List pages = [
    const HomePage(),
    const FavoriteScreen(),
    const UserProfile(),
    const CouponsPage(),
  ];

  int currentIndex = 0;
  void onTap(int index) {
    currentIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: pages[currentIndex],
      ),
      //currentTab[provider.currentIndex],
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: homeBgColor,
            borderRadius: BorderRadius.circular(0)
        ),
        child: BottomNavigationBar(
            selectedItemColor: Colors.transparent,
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: onTap,
            backgroundColor: Colors.transparent,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset('assets/bottom_nav_images/home_vector.png',
                  color: currentIndex == 0 ? kRed : unSelectedTabColor,
                  width: 30,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                  icon: Image.asset('assets/bottom_nav_images/favorite_Vector.png',
                    color: currentIndex == 1 ? kRed : unSelectedTabColor,
                    width: 30,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_outlined, size: 30, color: currentIndex == 2 ? kRed : unSelectedTabColor,),
                  // icon: Column(
                  //   children: [
                  //     Image.asset('assets/bottom_nav_images/profile_Vector.png',
                  //       color: currentIndex == 2 ? kRed : unSelectedTabColor,
                  //       width: 30,
                  //     ),
                  //     Image.asset('assets/bottom_nav_images/profile_Vector_2.png',
                  //       color: currentIndex == 2 ? kRed : unSelectedTabColor,
                  //       width: 30,
                  //     ),
                  //   ],
                  // ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Image.asset('assets/bottom_nav_images/my_Vector.png',
                      color: currentIndex == 3 ? kRed : unSelectedTabColor,
                      width: 30),
                  label: ''),
            ]),
      ),
    );
  }
}