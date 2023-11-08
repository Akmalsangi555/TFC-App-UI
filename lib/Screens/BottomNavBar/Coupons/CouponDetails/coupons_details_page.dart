import 'package:flutter/material.dart';
import '../../../../Widgets/colors.dart';
import 'coupons_items_list.dart';

class CouponDetailsPage extends StatefulWidget {
  const CouponDetailsPage({Key? key}) : super(key: key);

  @override
  State<CouponDetailsPage> createState() => _CouponDetailsPageState();
}

class _CouponDetailsPageState extends State<CouponDetailsPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height*0.35,
            width: width,
            color: Colors.transparent,
            child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)
                    ),
                    child: Image.asset("assets/coupons/coupon_details_image.png",
                      fit: BoxFit.fill,
                      height: height*0.35,
                      width: width,
                    ),
                  ),

                  Positioned(
                      child: GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: width*0.05, vertical: height*0.07),
                            child: Icon(Icons.arrow_back_ios_new_rounded, color: kWhite, size: 20,),
                          ))),
                  Positioned(
                    bottom: 0,
                    child: Padding(
                      // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      padding: EdgeInsets.symmetric(horizontal: width*0.05, vertical: height*0.01),
                      child: Row(
                        children: [
                          Image.asset("assets/coupons/Vector (1).png", height: height*0.1, width: width*0.1,),
                          SizedBox(width: width*0.02,),
                          Text("20 %",
                            style: TextStyle(color: kWhite, fontSize: 20, fontWeight: FontWeight.w700, ),),
                        ],
                      ),
                    ),
                  ),
                ]
            )
          ),

          couponsItemsList(context),
        ],
      ),
    );
  }
}
