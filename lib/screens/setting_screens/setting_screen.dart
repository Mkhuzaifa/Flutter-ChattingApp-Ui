import 'package:connect_me/component/text_style.dart';
import 'package:connect_me/screens/setting_screens/profile_screens/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:page_animation_transition/animations/bottom_to_top_transition.dart';
import 'package:page_animation_transition/animations/left_to_right_transition.dart';
import 'package:page_animation_transition/animations/right_to_left_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';
import '../../component/reusbale_row.dart';
import 'app_setting/App_info.dart';
import 'app_setting/contact_us.dart';
 
class settingScreen extends StatefulWidget {
  const settingScreen({super.key});

  @override
  State<settingScreen> createState() => _settingScreenState();
}

class _settingScreenState extends State<settingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(elevation: 1,
          backgroundColor: Colors.white,centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text("Setting",style: appTextstyle.normalText(fontSize: 23),),),
        body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [

            reusbale_row(title: "App info",icon: Icons.info,title2: "App version",onPressed: () {
              Navigator.of(context).push(PageAnimationTransition(page:  appInfo(), pageAnimationType: RightToLeftTransition()));},),
            space(10),
            reusbale_row(title: "Contact us",icon: Icons.group,title2: "Questions Need Help",onPressed: () {
              Navigator.of(context).push(PageAnimationTransition(page:  contactUs(), pageAnimationType: LeftToRightTransition()));
            },),

          ],
        ),
      ),
    );
  }
}
