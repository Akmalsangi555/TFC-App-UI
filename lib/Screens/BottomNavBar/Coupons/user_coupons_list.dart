import 'package:flutter/material.dart';
import '../../../Widgets/colors.dart';
import '../../../Widgets/header_text.dart';
import '../Drawer/menu_drawer.dart';
import 'CouponDetails/coupons_details_page.dart';

class UserCouponsList extends StatefulWidget {
  const UserCouponsList({Key? key}) : super(key: key);

  @override
  State<UserCouponsList> createState() => _UserCouponsListState();
}

class _UserCouponsListState extends State<UserCouponsList> {

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
          child: const MenuDrawer(),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset("assets/coupons/TFC_Logo_Chicken.png",
              width: double.infinity,
            ).image,
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width*0.07),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height*0.12),
                headingText(context, "Coupons"),
                Container(
                  height: height*0.8,
                  color: Colors.transparent,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                      itemCount: userCouponsList.length,
                      itemBuilder: (BuildContext context, int index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 05),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const CouponDetailsPage()));
                        },
                        child: Container(
                          color: Colors.transparent,
                          child: Stack(
                              children: <Widget>[
                                Image.asset("assets/coupons/coupon_image.png", fit: BoxFit.fill,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                                      child: Row(
                                        children: [
                                          Image.asset(userCouponsList[index].couponImage, height: height*0.05, width: width*0.05,),
                                          SizedBox(width: width*0.02,),
                                          Text(userCouponsList[index].couponDiscount,
                                            style: TextStyle(color: kWhite, fontSize: 20, fontWeight: FontWeight.w700, ),),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 25),
                                      child: Image.asset("assets/coupons/Line_image.png", fit: BoxFit.fill,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                                      child: Text(userCouponsList[index].textOrderNow,
                                        style: TextStyle(color: kWhite, fontSize: 20, fontWeight: FontWeight.w700, ),),
                                    ),
                                  ],
                                ),
                              ]
                          ),
                        ),
                      ),
                    );
                  },
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

List userCouponsList = [
  CouponsClass("assets/coupons/Vector (1).png", "20 %", 'Order Now ',),
  CouponsClass("assets/coupons/Vector (2).png", "35 %", 'Order Now ',),
  CouponsClass("assets/coupons/Vector (1).png", "20 %", 'Order Now ',),
  CouponsClass("assets/coupons/Vector (2).png", "35 %", 'Order Now ',),
  CouponsClass("assets/coupons/Vector (1).png", "20 %", 'Order Now ',),
  CouponsClass("assets/coupons/Vector (2).png", "35 %", 'Order Now ',),
];

class CouponsClass {
  final String couponImage;
  final String couponDiscount;
  final String textOrderNow;

  CouponsClass(this.couponImage, this.couponDiscount, this.textOrderNow);
}
