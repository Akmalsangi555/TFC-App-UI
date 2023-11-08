import 'dart:async';
import 'package:flutter/material.dart';
import '../Authentication/login_tab_class.dart';
import '../Widgets/colors.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // splashNavigator();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kRedBgColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.only(left: 40, top: 70),
              child: Container(
                height: 70, width: 70,
                 decoration: BoxDecoration(
                   color: kWhite,
                   borderRadius: BorderRadius.circular(50)
                 ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset('assets/splash/TFC_Logo_Chicken.png',
                    width: 59,
                    height: 50,
                    fit: BoxFit.fill,),
                ),
              ),
            ),
            SizedBox(height: height * 0.05,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.1),
              child: Text("Food for \nEveryone", style: TextStyle( fontWeight: FontWeight.bold,
                  fontSize: 50, color: kBlack),),
            ),
            SizedBox(height: height * 0.07),
            Center(
                child: Image.asset('assets/splash/TFC_Logo_Shef.png', fit: BoxFit.fill,)
            ),

            SizedBox(height: height * 0.1),

            Center(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginTabClass()));
                },
                child: Container(
                  height: height * 0.07,
                  width: width * 0.7,
                  decoration: BoxDecoration(
                      color: kWhite,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text("Get started", textAlign: TextAlign.center,
                        style: TextStyle(color: kRed, fontSize: 18)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  splashNavigator() {
    Timer(const Duration(seconds: 3), () {
      // Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHomePage(title: "title")));
    });
  }
}
