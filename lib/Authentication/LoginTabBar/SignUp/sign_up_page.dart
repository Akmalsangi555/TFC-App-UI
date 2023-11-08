import 'package:flutter/material.dart';

import '../../../Widgets/button.dart';
import '../../../Widgets/colors.dart';
class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: height*0.04),
        TextFormField(
          cursorColor: kRedLight,
          style: const TextStyle(color: Color(0xFFff0036)),
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: "Enter Phone number or Email address",
            hintText:  '* * * * * * * *',
            hintStyle: TextStyle(fontSize: 14,color: Colors.grey),
          ),
        ),
        SizedBox(height: height*0.03),
        TextFormField(
          cursorColor: kRedLight,
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: "Password",
            hintText: "* * * * * * * *",

            hintStyle: TextStyle(fontSize: 14,color: Colors.grey),
          ),
        ),
        SizedBox(height: height*0.07),
        Center(
          child: Column(
            children: [
              Text('or proceed with',
                style: TextStyle(color: kRedLight, fontSize: 17),),
              SizedBox(height: height*0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      color: kWhite,
                      child: Image.asset('assets/sign_in/facebook_vector.png', fit: BoxFit.fill,)),
                  SizedBox(width: width*0.02),
                  Container(
                      color: kWhite,
                      child: Image.asset('assets/sign_in/gmail_vector.png', fit: BoxFit.fill,)),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: height* 0.07),
        myButtonWidget(context, "Sign up"),
      ],
    );
  }
}
