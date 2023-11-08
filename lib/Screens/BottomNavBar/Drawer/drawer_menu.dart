import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import '../../../Widgets/colors.dart';
import 'ContactUs/contact_us_page.dart';
import 'Wallet/wallet_page.dart';

class DrawerMenuPage extends StatefulWidget {
  const DrawerMenuPage({Key? key}) : super(key: key);

  @override
  State<DrawerMenuPage> createState() => _DrawerMenuPageState();
}

class _DrawerMenuPageState extends State<DrawerMenuPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kRed,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 0, top: height*0.13),
            child: InkWell(
              onTap: () {
                ZoomDrawer.of(context)!.close();
              },
              child: ListTile(
                leading: Icon(
                  Icons.close,
                  color: kWhite,
                ),
                title: Text("Close", style: TextStyle(color: kWhite),),
                minLeadingWidth: 10,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width*0.13, right: 20, top: height*0.01),
            child: Divider(color: dividerColor,),
          ),
          optionsList(Icons.shopping_cart, "Cart" ),
          Padding(
            padding: EdgeInsets.only(left: width*0.13, right: 20, top: height*0.01),
            child: Divider(color: dividerColor,),
          ),
          optionsList(Icons.access_time_outlined, "Activity" ),
          Padding(
            padding: EdgeInsets.only(left: width*0.13, right: 20, top: height*0.01),
            child: Divider(color: dividerColor,),
          ),
          GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ContactUsPage()));
              },
              child: optionsList(Icons.shopping_cart, "contact us" )),
          Padding(
            padding: EdgeInsets.only(left: width*0.13, right: 20, top: height*0.01),
            child: Divider(color: dividerColor,),
          ),
          GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const WalletPage()));
              },
              child: optionsList(Icons.account_balance_wallet, "wallet" )),

          SizedBox(height: height*0.25),
          optionsList(Icons.logout, "Logout" ),
          // ...MenuOptions.allOptions.map(optionsList).toList(),
        ],
      ),
    );
  }

  Widget optionsList(icon, title) {
    return ListTile(
      leading: Icon(icon, color: kWhite,),
      title: Text(title, style: TextStyle(color: kWhite),),
      minLeadingWidth: 10,
    );
  }
}
