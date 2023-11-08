import 'package:flutter/material.dart';
import '../Widgets/colors.dart';
import 'LoginTabBar/LogIn/login_page.dart';
import 'LoginTabBar/SignUp/sign_up_page.dart';

class LoginTabClass extends StatefulWidget {
  const LoginTabClass({Key? key}) : super(key: key);

  @override
  State<LoginTabClass> createState() => _LoginTabClassState();
}

class _LoginTabClassState extends State<LoginTabClass> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      backgroundColor: homeBgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
                    SizedBox(height: height * 0.08),
                    Image.asset('assets/sign_in/TFC_Logo_Chicken.png', height: height * 0.2,
                      fit: BoxFit.fill,),
                    const Spacer(),
                    TabBar(
                      controller: _tabController,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      indicatorColor: Colors.pink,
                      unselectedLabelColor: Colors.red,
                      isScrollable: false,
                      labelColor: Colors.orange,
                      automaticIndicatorColorAdjustment: false,
                      tabs: [
                        Tab(
                          child: Text('Login', style: TextStyle(fontSize: 15, color: kBlack)),
                        ),
                          Tab(
                          child: Padding(
                            padding:  const EdgeInsets.symmetric(horizontal: 15),
                            child: Text('Sign-up',
                              style: TextStyle(fontSize: 15, color: kBlack),),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: height*0.5,
                width: 300,
                child: TabBarView(
                    controller: _tabController,
                    children: const [
                      /// Apna idher 2 diff widget call kr lena ak login or ak register
                      // Container(
                      //   color: Colors.red,
                      // ),
                      // Container(
                      //   color: Colors.blueAccent,
                      // ),
                      LoginPage(),
                      SignUpPage(),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}