import 'package:connect_me/component/app_button.dart';
import 'package:connect_me/component/app_colors.dart';
import 'package:connect_me/component/app_images.dart';
import 'package:connect_me/component/text_style.dart';
import 'package:flutter/material.dart';

import '../../../component/app_textfield.dart';
import '../../../component/profile_setting_field.dart';

class editProfile extends StatefulWidget {
  const editProfile({super.key});

  @override
  State<editProfile> createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {

  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final joindateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var heighttop = MediaQuery.of(context).padding.top;
     emailController.text = "Brothercode@gmail.com";
     nameController.text = "Brothercode";
    joindateController.text = "01/05/2023";
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(elevation: 1,
        backgroundColor: Colors.white,centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Edit Profile",style: appTextstyle.normalText(fontSize: 23),),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  height: 140,
                  width: 140,
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
                      Positioned(
                          right: -25,
                          left: 80,
                          bottom: 0,
                          child: CircleAvatar(radius: 20,backgroundColor: appColor.blue,
                            child: Icon(Icons.camera_alt,color: Colors.white,size: 20,),))
                    ],
                  ),
                ),
              ),
              space(height/20),
              Text("Name",style: appTextstyle.normalText(FontWeight: FontWeight.w500,fontSize: 18),),
              space(5),
              profile_setting_field(title: "Name", prefixIcons: Icon(Icons.person),
                  obsecureText: false,controller: nameController,suffixIcon: Icon(Icons.edit)),
              space(height/40),
              Text("Email",style: appTextstyle.normalText(FontWeight: FontWeight.w500,fontSize: 18),),
              space(5),
              profile_setting_field(title: "Email",enabled: false,
                  prefixIcons: Icon(Icons.alternate_email),obsecureText: false,controller: emailController),

              space(30),
              Center(
                child: SizedBox(width: 100,height: 50,
                    child: appButton(title: "Save",onPressed: () {},)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
