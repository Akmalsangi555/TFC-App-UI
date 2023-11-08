import 'package:flutter/material.dart';
import 'package:tfc_app_ui/Widgets/colors.dart';
import 'HomeTabBar/drinks_page_home_tab/drinks_page.dart';
import 'HomeTabBar/food_page_home_tab/food_page.dart';
import 'HomeTabBar/sauce_page_home_tab/sauce_page.dart';
import 'HomeTabBar/snacks_page_home_tab/snacks_page.dart';
import 'See More/see_more_screen.dart';

class HomePageTabBar extends StatefulWidget {
  const HomePageTabBar({Key? key}) : super(key: key);

  @override
  State<HomePageTabBar> createState() => _HomePageTabBarState();
}

class _HomePageTabBarState extends State<HomePageTabBar> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    TabController tabController = TabController(length: 4, vsync: this);
    return Container(
      height: height*0.55,
      color: Colors.transparent,
      child: Column(
        children: [
          TabBar(
            controller: tabController,
            padding: const EdgeInsets.symmetric(horizontal: 05),
            indicatorColor: Colors.pink,
            unselectedLabelColor: Colors.red,
            isScrollable: false,
            labelColor: Colors.orange,
            automaticIndicatorColorAdjustment: false,
            tabs: [
              Tab(
                child: Text('Foods', style: TextStyle(fontSize: 12, color: kBlack))),
              Tab(
                child: Text('Drinks', style: TextStyle(fontSize: 12, color: kBlack))),
              Tab(
                child: Text('Snacks', style: TextStyle(fontSize: 12, color: kBlack))),
                Tab(
                child: Text('Sauce', style: TextStyle(fontSize: 12, color: kBlack))),
            ],
          ),
          SizedBox(height: height*0.02,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                GestureDetector(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>const SeeMoreItemsPage()));
                    },
                    child: Text("see more", style: TextStyle(color: kRedLight, fontSize: 15),)),
              ],
            ),
          ),
          SizedBox(height: height*0.02,),
          Container(
            height: height*0.3,
            width: width,
            color: Colors.transparent,
            child: TabBarView(
                controller: tabController,
                children: const [
                  /// Apna idher 2 diff widget call kr lena ak login or ak register
                  FoodPage(),
                  DrinksPage(),
                  SnacksPage(),
                  SaucePage(),
                ]
            ),
          )
        ],
      ),
    );

    //   Scaffold(
    //   backgroundColor: homeBgColor,
    //   body: Column(
    //     children: [
    //       Container(
    //         height: MediaQuery.of(context).size.height * 0.2,
    //         width: double.infinity,
    //         decoration: BoxDecoration(
    //             color: Colors.white,
    //           borderRadius: BorderRadius.circular(20)
    //         ),
    //         child: Column(
    //           children: [
    //             SizedBox(height: height * 0.0),
    //             Image.asset('assets/sign_in/TFC_Logo_Chicken.png',
    //               fit: BoxFit.fill,),
    //             // TabBar(
    //             //   controller: tabController,
    //             //   padding: const EdgeInsets.symmetric(horizontal: 15),
    //             //   indicatorColor: Colors.pink,
    //             //   unselectedLabelColor: Colors.red,
    //             //   isScrollable: false,
    //             //   labelColor: Colors.orange,
    //             //   automaticIndicatorColorAdjustment: false,
    //             //   tabs: [
    //             //     Tab(
    //             //       child: Text('Foods', style: TextStyle(fontSize: 15, color: kBlack)),
    //             //     ),
    //             //     Tab(
    //             //       child: Text('Drinks', style: TextStyle(fontSize: 15, color: kBlack)),
    //             //     ),
    //             //     Tab(
    //             //       child: Text('Snacks', style: TextStyle(fontSize: 15, color: kBlack)),
    //             //     ),
    //             //       Tab(
    //             //       child: Padding(
    //             //         padding:  const EdgeInsets.symmetric(horizontal: 15),
    //             //         child: Text('Sauce',
    //             //           style: TextStyle(fontSize: 15, color: kBlack),),
    //             //       ),
    //             //     ),
    //             //   ],
    //             // ),
    //           ],
    //         ),
    //       ),
    //       // Container(
    //       //   height: height*0.2,
    //       //   width: 100,
    //       //   child: TabBarView(
    //       //       controller: tabController,
    //       //       children: [
    //       //         /// Apna idher 2 diff widget call kr lena ak login or ak register
    //       //         Container(
    //       //           color: Colors.red,
    //       //         ),
    //       //         Container(
    //       //           color: Colors.blueAccent,
    //       //         ),
    //       //         Container(
    //       //           color: Colors.purple,
    //       //         ),
    //       //         Container(
    //       //           color: Colors.amber,
    //       //         ),
    //       //       ]
    //       //   ),
    //       // )
    //     ],
    //   ),
    // );

  }
}