
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'PrivacyPolicyScreen.dart';
import 'TermsAndConditions.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:Colors.white,
      child: ListView(

        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
           DrawerHeader(padding: EdgeInsets.only(left: 30),
            decoration: BoxDecoration(
            ),
            child: Center(child:ListTile(title: Text("4K Wallpaper",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.white ),)) ,),
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip_outlined,color:Colors.black,),
            title:  Text('Privacy Ploicy',style: TextStyle(color:Colors.black,),),
            onTap: () {
              Get.back();
              Get.to(()=>PrivacyPolicyScreen());
            },
          ),
          ListTile(
            leading: Icon(Icons.private_connectivity,color:Colors.black,),
            title:  Text('Terms And Conditions',style: TextStyle(color:Colors.black,),),
            onTap: () {
              Get.back();
              Get.to(()=>TermsAndConditions());
            },
          ),
          // ListTile(
          //   trailing:  Padding(
          //      padding:  EdgeInsets.only(top: 20),
          //     child: ChangeThemeButtonWidget(),
          //             ),
          //   leading: Icon(Icons.dark_mode_outlined,color: text == 'DarkTheme'?Colors.white:Colors.black,),
          //   title:  Text('Mode',style: TextStyle(color: text == 'DarkTheme'?Colors.white:Colors.black,),),
          //   onTap: () {
          //
          //   },
          // ),
          ListTile(
            title:  Text('Version 1.0.0+1',style: TextStyle(color:Colors.black,),),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }
}
