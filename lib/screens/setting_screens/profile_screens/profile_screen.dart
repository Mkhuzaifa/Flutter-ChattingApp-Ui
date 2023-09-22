import 'package:connect_me/component/app_button.dart';
import 'package:connect_me/component/app_colors.dart';
import 'package:connect_me/component/app_images.dart';
import 'package:connect_me/component/reusbale_row.dart';
import 'package:connect_me/screens/setting_screens/profile_screens/edit_profile.dart';
import 'package:connect_me/screens/setting_screens/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_animation_transition/animations/fade_animation_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

import '../../../component/text_style.dart';
import '../../../utils/routes/routes.dart';


class profileScreen extends StatefulWidget {
  const profileScreen({super.key});

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var heighttop = MediaQuery.of(context).padding.top;
    return Scaffold(        backgroundColor: Colors.white,
      // appBar: AppBar(elevation: 1,
      //   backgroundColor: Colors.white,centerTitle: true,
      //   iconTheme: IconThemeData(color: Colors.black),
      //   title: Text("Profile",style: appTextstyle.normalText(fontSize: 23),),),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  children: [
                    Center(
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Stack(alignment: Alignment.center,
                          fit: StackFit.expand,
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              height: 140,
                              width: 140,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: appColor.blue,width: 3,),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Center(
                                  child: CircleAvatar(radius: 70,
                                    backgroundImage: AssetImage(appImage.profile.toString()),),
                                ),
                              ),
                            ),
                            // Positioned(
                            //     right: -25,
                            //     left: 80,
                            //     bottom: 0,
                            //     child: CircleAvatar(radius: 20,backgroundColor: appColor.blue,
                            //       child: Icon(Icons.edit,color: Colors.white,size: 20,),))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Column(mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Brother Code",style: appTextstyle.normalText(FontWeight: FontWeight.w500,
                            fontSize: 19),),

                        Text("Brothercode@gmail.com",style: appTextstyle.normalText(),),
                      ],
                    ),
                  ],
                ),space(5),
                Divider(),
                space(2),
                reusbale_row(title: "Edit Profile",icon: Icons.person,title2: "Edit Your Profile",onPressed: () {
                  Navigator.pushNamed(context, RoutesName.editProfile);
                  },),
                Divider(),
                reusbale_row(title: "Setting",icon: Icons.settings,title2: "App permissions",onPressed: () {

                  Navigator.pushNamed(context, RoutesName.settingScreen);

                },),
                Divider(),
                reusbale_row(title: "Privacy Policy",icon: Icons.privacy_tip,title2: "Accounts and password settings", onPressed: () {
                  Navigator.pushNamed(context, RoutesName.PrivacyPolicyScreen);
                },),
                Divider(),
                reusbale_row(title: "Terms & Conditions",icon: Icons.warning,title2: "ConnectMe Terms & Conditions", onPressed: () {
                  Navigator.pushNamed(context, RoutesName.TermsAndConditions);
                },),
                Divider(),
                reusbale_row(title: "Rate This App",icon: Icons.star,title2: "Review your favorite"),
                Divider(),
                reusbale_row(title: "Share This App",icon: Icons.share_rounded,title2: "Share this app to friends",),
                Divider(),
                reusbale_row(title: "Logout",icon: Icons.logout,title2: "Signout your Account",color: Colors.red),



            ],),
          ),
        ),
      ),
    );
  }
}

