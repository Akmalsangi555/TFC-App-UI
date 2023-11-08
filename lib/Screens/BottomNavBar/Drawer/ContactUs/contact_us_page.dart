import 'package:flutter/material.dart';
import 'package:tfc_app_ui/Widgets/colors.dart';
import 'package:tfc_app_ui/Widgets/header_text.dart';
import '../menu_drawer.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {

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

                headingText(context, "Contact Us"),

                SizedBox(height: height*0.2),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width*0.07),
                  child: Column(
                    children: [
                      Text("No 40 Baria Street 133/2",
                        style: TextStyle(color: kBlack, fontSize: 17, fontWeight: FontWeight.w400, ),),
                      SizedBox(height: height*0.01),
                      Text("+(156)1800-366-6666",
                        style: TextStyle(color: kBlack, fontSize: 15, fontWeight: FontWeight.w400, ),),

                      SizedBox(height: height*0.01),
                      Text("www.tfc.com",
                        style: TextStyle(color: kBlack, fontSize: 15, fontWeight: FontWeight.w400, ),),
                      SizedBox(height: height*0.1),
                      Text("Get News and Offers by Subscribing to us",
                        style: TextStyle(color: kBlack, fontSize: 15, fontWeight: FontWeight.w400, ),),

                      SizedBox(height: height*0.03),
                      Container(
                        height: height*0.07, width: width,
                        decoration: BoxDecoration(
                          color: kWhite,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: width* 0.02, vertical: height*0.02),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              VerticalDivider(color: kBlack,),
                              const Center(child: Icon(Icons.email_outlined,)),
                            ],
                          ),
                        ),
                      ),
                    ],
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
