import 'package:flutter/material.dart';
import 'package:tfc_app_ui/Widgets/button.dart';
import 'package:tfc_app_ui/Widgets/colors.dart';


enum CardsEnumList { simpleCard, bankAccount, payPal }
class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  CardsEnumList selectedCard = CardsEnumList.simpleCard;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title:  Text("My profile",
          style: TextStyle(color: kBlack, fontSize: 18, fontWeight: FontWeight.w500, ),),
        centerTitle: true,
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
        elevation: 0,
      ),
      backgroundColor: homeBgColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width*0.07),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height*0.04),
              Text("Information",
                style: TextStyle(color: kBlack, fontSize: 18, fontWeight: FontWeight.w100, fontFamily: "Inter"),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, ),
                child: Container(
                  height: height*0.15, width: width,
                  decoration: BoxDecoration(
                      color: kWhite,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Image.asset("assets/home_page/profile_image.png",
                              height: height*0.08,
                              fit: BoxFit.fill, ),
                          ],
                        ),
                        SizedBox(width: width*0.02),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Abc",
                              style: TextStyle(color: kBlack, fontSize: 18, fontWeight: FontWeight.w100, ),),
                            SizedBox(width: width*0.03),
                            Text("+(156)1800-366-6666",
                              style: TextStyle(color: kBlack, fontSize: 15, fontWeight: FontWeight.w100, ),),
                            SizedBox(width: width*0.01),
                            Text("No 40 Baria Street 133/2",
                              style: TextStyle(color: kBlack, fontSize: 15, fontWeight: FontWeight.w100, ),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: height*0.05),
              Text("Payment Method",
                style: TextStyle(color: kBlack, fontSize: 17, fontWeight: FontWeight.w100, fontFamily: "Inter"),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, ),
                child: Container(
                  height: height*0.25, width: width,
                  decoration: BoxDecoration(
                      color: kWhite,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Row(
                            children: [
                              Container(height: height*0.03, width: width*0.07,
                              decoration: BoxDecoration(
                                  color: simpleCardColor,
                                borderRadius: BorderRadius.circular(05)
                              ),
                                child: Image.asset("assets/payment_cards/simple_card.png",),
                              ),
                              SizedBox(width: height*0.02),

                              Text('Card', style: TextStyle(color: kBlack,
                                  fontSize: 17, fontWeight: FontWeight.w400, fontFamily: "Inter" )),
                            ],
                          ),
                          leading: Radio(
                            value: CardsEnumList.bankAccount,
                            groupValue: selectedCard,
                            onChanged: (CardsEnumList? value) {
                              setState(() {
                                selectedCard = value!;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Row(
                            children: [
                              Container(height: height*0.03, width: width*0.07,
                                decoration: BoxDecoration(
                                    color: bankCardColor,
                                    borderRadius: BorderRadius.circular(05)
                                ),
                                child: Image.asset("assets/payment_cards/Bank account_card.png",),
                              ),
                              SizedBox(width: height*0.02),
                              Text('Bank account', style: TextStyle(color: kBlack,
                                  fontSize: 17, fontWeight: FontWeight.w400, fontFamily: "Inter" )),
                            ],
                          ),
                          leading: Radio(
                            value: CardsEnumList.simpleCard,
                            groupValue: selectedCard,
                            onChanged: (CardsEnumList? value) {
                              setState(() {
                                selectedCard = value!;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Row(
                            children: [
                              Container(height: height*0.03, width: width*0.07,
                                decoration: BoxDecoration(
                                    color: payPalCardColor,
                                    borderRadius: BorderRadius.circular(05)
                                ),
                                child: Image.asset("assets/payment_cards/Paypal_card.png",),
                              ),
                              SizedBox(width: height*0.02),
                              Text('Paypal', style: TextStyle(color: kBlack,
                                  fontSize: 17, fontWeight: FontWeight.w400, fontFamily: "Inter" )),
                            ],
                          ),
                          leading: Radio(
                            value: CardsEnumList.payPal,
                            groupValue: selectedCard,
                            onChanged: (CardsEnumList? value) {
                              setState(() {
                                selectedCard = value!;
                              });
                            },
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: height*0.2),

              myButtonWidget(context, "Update"),

            ],
          ),
        ),
      ),
    );
  }
}
