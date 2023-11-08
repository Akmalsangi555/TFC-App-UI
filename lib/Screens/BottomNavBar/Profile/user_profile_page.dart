import 'package:flutter/material.dart';
import 'package:tfc_app_ui/Widgets/button.dart';
import 'package:tfc_app_ui/Widgets/header_text.dart';
import '../../../Widgets/colors.dart';
import '../Drawer/menu_drawer.dart';
import 'edit_profile_page.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {

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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width*0.07),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height*0.12),
              headingText(context, "My profile"),
              SizedBox(height: height*0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Personal details",
                style: TextStyle(color: kBlack, fontSize: 18, fontWeight: FontWeight.w100, ),),
                  Text("change",
                    style: TextStyle(color: kRedLight, fontSize: 15, fontWeight: FontWeight.w100, ),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, ),
                child: Container(
                  height: height*0.2, width: width,
                  decoration: BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Image.asset("assets/home_page/profile_image.png", fit: BoxFit.fill,),
                          ],
                        ),
                        SizedBox(width: width*0.02),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Abc",
                              style: TextStyle(color: kBlack, fontSize: 18, fontWeight: FontWeight.w100, ),),
                            Text("abc@gmail.com",
                              style: TextStyle(color: kBlack, fontSize: 15, fontWeight: FontWeight.w100, ),),
                            Divider(color: kBlack,),
                            Text("+(156)1800-366-6666",
                              style: TextStyle(color: kBlack, fontSize: 15, fontWeight: FontWeight.w100, ),),
                            Divider(color: kBlack,),
                            Text("No 40 Baria Street 133/2",
                              style: TextStyle(color: kBlack, fontSize: 15, fontWeight: FontWeight.w100, ),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ),
                ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, ),
                child: Container(
                  height: height*0.075, width: width,
                  decoration: BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Pending reviews",
                          style: TextStyle(color: kBlack, fontSize: 18, fontWeight: FontWeight.w100, ),),
                        Icon(Icons.arrow_forward_ios_outlined, color: kBlack, size: 25,),

                      ],
                    ),
                  ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, ),
                child: Container(
                  height: height*0.075, width: width,
                  decoration: BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Help",
                          style: TextStyle(color: kBlack, fontSize: 18, fontWeight: FontWeight.w100, ),),
                        Icon(Icons.arrow_forward_ios_outlined, color: kBlack, size: 25,),

                      ],
                    ),
                  ),
                  ),
                ),

              SizedBox(height: height*0.15),

              Center(
                  child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const EditProfilePage()));
                      },
                      child: myButtonWidget(context, "Edit")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
