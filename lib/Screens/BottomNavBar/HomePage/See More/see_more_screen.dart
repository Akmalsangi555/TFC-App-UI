import 'package:flutter/material.dart';
import 'package:tfc_app_ui/Widgets/appbar_header.dart';
import 'package:tfc_app_ui/Widgets/colors.dart';
import 'all_items_widget.dart';

class SeeMoreItemsPage extends StatefulWidget {
  const SeeMoreItemsPage({Key? key}) : super(key: key);

  @override
  State<SeeMoreItemsPage> createState() => _SeeMoreItemsPageState();
}

class _SeeMoreItemsPageState extends State<SeeMoreItemsPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(
      //   leading: Padding(
      //     padding: const EdgeInsets.only(left: 20),
      //     child: GestureDetector(
      //         onTap: (){
      //           Navigator.pop(context);
      //         },
      //         child: Container(
      //             height: height*0.005, width: width*0.3, color: Colors.transparent,
      //             child: Icon(Icons.arrow_back_ios_new_rounded, color: kBlack, size: 20,))),
      //   ),
      //   backgroundColor: homeBgColor,
      //   elevation: 0,
      // ),
      backgroundColor: homeBgColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height*0.05),
          myAppBarHeader(context, "assets/home_page/back_image.png", ),
          SizedBox(height: height*0.02),
          Container(
            height: height * 0.82,
            width: width,
            decoration: const BoxDecoration(
              color: Color(0xffF9F9F9),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20)),
            ),
            child: Column(
              children: [
                SizedBox(height: height*0.02),
                Text("All Results",style: TextStyle(color: kBlack, fontSize: 28, fontWeight: FontWeight.w400),),
                allItemsList(context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

