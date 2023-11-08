import 'package:flutter/material.dart';
import 'package:tfc_app_ui/Widgets/colors.dart';
import '../../../Screens/BottomNavBar/HomePage/home_page.dart';
import '../../../Widgets/button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: height*0.04),
        TextFormField(
          cursorColor: kRedLight,
        style: const TextStyle(color: Color(0xFFff0036)),
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          labelText: "Email address",
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
            hintText:  '* * * * * * * *',
            hintStyle: TextStyle(fontSize: 14,color: Colors.grey),
          ),
        ),
        SizedBox(height: height*0.04),
        GestureDetector(
          onTap: (){
            // Navigator.push(context,
            //   MaterialPageRoute(builder: (context)=>forgot_password()));
          },
          child: Text('Forgot passcode?',
            style: TextStyle(color: kRedLight, fontSize: 17),),
        ),
        SizedBox(height: height* 0.15),
        GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage()));
            },
            child: myButtonWidget(context, "Login")),
      ],);
  }

}


