import 'package:flutter/material.dart';
import 'package:tfc_app_ui/Widgets/button.dart';
import 'package:tfc_app_ui/Widgets/colors.dart';

class ItemsDetailsPage extends StatefulWidget {
  final String? image, title, price;
  const ItemsDetailsPage({Key? key,this.image, this.title, this.price}) : super(key: key);

  @override
  State<ItemsDetailsPage> createState() => _ItemsDetailsPageState();
}

class _ItemsDetailsPageState extends State<ItemsDetailsPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                  height: height*0.005, width: width*0.3, color: Colors.transparent,
                  child: Icon(Icons.arrow_back_ios_new_rounded, color: kBlack, size: 20,))),
        ),
        backgroundColor: homeBgColor,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.favorite_border_outlined, color: kBlack,),
          )
        ],
        elevation: 0,
      ),
      backgroundColor: homeBgColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height*0.05),
              Center(
                child: CircleAvatar(
                  backgroundImage: Image.asset(widget.image!,
                  fit: BoxFit.fill,
                  ).image,
                  radius: 70,
                ),
              ),
              SizedBox(height: height*0.05),
              Center(child: Text(widget.title!, style: TextStyle(color: kBlack, fontSize: 22, fontFamily: "Inter"),)),
              SizedBox(height: height*0.02),
              Center(child: Text(widget.price!, style: TextStyle(color: kRedLight, fontSize: 22, fontWeight: FontWeight.w700, fontFamily: "Inter"),)),
              SizedBox(height: height*0.05),
              Text("Delivery Info", style: TextStyle(color: kBlack,
                  fontFamily: "Inter", fontSize: 17, fontWeight: FontWeight.w100),),
              SizedBox(height: height*0.01),
              Text("Delivered between monday aug and thursday 20 from 8pm to 91:32 pm",
                style: TextStyle(color: kBlack, fontSize: 15, fontFamily: "Inter"),),
              SizedBox(height: height*0.05),
              Text("Return policy", style: TextStyle(color: kBlack, fontSize: 17, fontFamily: "Inter", fontWeight: FontWeight.w100),),
              SizedBox(height: height*0.01),
              Text("All our foods are double checked before leaving our stores so by "
                  "any case you found a broken food please contact our hotline immediately.",
                style: TextStyle(color: kBlack, fontSize: 15, fontWeight: FontWeight.w400, fontFamily: "Inter"),),

              SizedBox(height: height*0.05),
              Center(child: myButtonWidget(context, "Add to cart")),

            ],
          ),
        ),
      ),
    );
  }
}
