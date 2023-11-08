import 'package:flutter/material.dart';
import 'package:tfc_app_ui/Widgets/colors.dart';
import 'package:tfc_app_ui/Widgets/header_text.dart';
import '../menu_drawer.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        leading: Padding(
          padding: EdgeInsets.only(top: height*0.045,),
          child: const MenuCrossIcon(),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width*0.07),
        child: SingleChildScrollView(
          child: Container(
            height: height*0.9,
            color: Colors.transparent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height*0.15),

                headingText(context, "Wallet"),

                SizedBox(height: height*0.1),
                Card(
                  elevation: 5,
                  shape: const StadiumBorder(
                    side: BorderSide(
                      color: Color(0xffFC9773),
                      width: 2.0,
                    ),
                  ),
                  child: Container(

                    height: height*0.2,
                    width: width,
                    decoration: BoxDecoration(
                      color: const Color(0xffFC9773),
                      borderRadius: BorderRadius.circular(10),

                        // gradient: const LinearGradient(
                        //   begin: Alignment.centerLeft,
                        //   end: Alignment.centerRight,
                        //   stops: [
                        //     0.35,
                        //     0.65,
                        //   ],
                        //   colors: [
                        //     Colors.red,
                        //     Color(0xfffedbcf)
                        //   ],
                        // )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Image.asset("assets/wallet_images/payPal.png"),
                                  SizedBox(width: width*0.01),
                                  Text("PayPal",
                                    style: TextStyle(color: kWhite, fontSize: 14, fontWeight: FontWeight.w400, fontStyle: FontStyle.italic ),),
                                ],
                              ),
                              SizedBox(height: height*0.01),
                              Text("RS   0.00",
                                style: TextStyle(color: kWhite, fontSize: 18, fontWeight: FontWeight.w600, fontStyle: FontStyle.italic ),),
                              SizedBox(height: height*0.01),
                              Text("Auto - Refill is off",
                                style: TextStyle(color: kWhite, fontSize: 8, fontWeight: FontWeight.w400, fontStyle: FontStyle.italic ),),
                              SizedBox(height: height*0.01),
                              Container(
                                height: height*0.025,
                                width: width* 0.2,
                                decoration: BoxDecoration(
                                    color: kRedLight,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.add, color: kWhite, size: 15,),
                                      SizedBox(width: width*0.01),
                                      Text("Add Funds",
                                        style: TextStyle(color: kWhite, fontSize: 10, fontWeight: FontWeight.w400, ),),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             Icon(Icons.keyboard_arrow_right_outlined, color: kWhite, size: 35,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: height*0.04),
                Text("Payment Methods",
                  style: TextStyle(color: kBlack, fontSize: 17, fontWeight: FontWeight.w400, ),),
                SizedBox(height: height*0.01),
                Text("You don’t have any activity at the moment",
                  style: TextStyle(color: kBlack, fontSize: 12, fontWeight: FontWeight.w400, ),),

                SizedBox(height: height*0.01),
                Row(
                  children: [
                    Text("Cash",
                      style: TextStyle(color: kBlack, fontSize: 12, fontWeight: FontWeight.w400, ),),
                    SizedBox(width: width*0.01),
                    Image.asset("assets/wallet_images/Cash.png"),
                  ],
                ),
                SizedBox(height: height*0.01),
                Container(
                  height: height*0.03,
                  width: width* 0.45,
                  decoration: BoxDecoration(
                    color: kRedLight,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(
                    child: Text("Add a Payment Method",
                      style: TextStyle(color: kWhite, fontSize: 15, fontWeight: FontWeight.w400, ),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
