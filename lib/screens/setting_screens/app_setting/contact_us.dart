import 'dart:convert';

import 'package:connect_me/component/app_button.dart';
import 'package:connect_me/component/app_colors.dart';
import 'package:connect_me/component/app_images.dart';
import 'package:connect_me/component/text_style.dart';
import 'package:connect_me/screens/setting_screens/profile_screens/profile_screen.dart';
import 'package:connect_me/screens/setting_screens/profile_screens/edit_profile.dart';
import 'package:connect_me/utils/utils.dart';
import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../setting_screen.dart';

class contactUs extends StatefulWidget {
  const contactUs({super.key});

  @override
  State<contactUs> createState() => _contactUsState();
}

class _contactUsState extends State<contactUs> {
  final detailController = TextEditingController();
  final key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(elevation: 1,
          backgroundColor: Colors.white,centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text("Contact",style: appTextstyle.normalText(fontSize: 23),),),
        body: Form(
          key: key,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [

                  Container(height: height *.2,width: double.infinity,
                  color: Colors.grey.withOpacity(0.1),child: TextFormField(
                      controller: detailController,
                      validator: (value) {
                        if(value == null || value.isEmpty){
                          return "Enter Detail";
                        }return null;
                      },

                      decoration: InputDecoration(contentPadding: EdgeInsets.all(10),
                        hintText: "Tell us how we can help",
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: appColor.blue)),

                      ),
                      maxLines: 6,


                    ),),
                   space(20),
                   Text("Technical detail like you model and setting can help us answer you question."),

                     space(height*.3),
                    SizedBox(width: 100,height: 50,
                        child: appButton(title: "Next",onPressed: ()async {
                         if(key.currentState!.validate()){
                           String? encodeQueryParameters(Map<String, String> params) {
                             return params.entries
                                 .map((MapEntry<String, String> e) =>
                             '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                                 .join('&');
                           }
// ···
                           final Uri emailLaunchUri = Uri(
                             scheme: 'mailto',
                             path: 'bc.brotherscode@gmail.com',
                             query: encodeQueryParameters(<String, String>{
                               'subject': 'ConnectMe',
                               'body': detailController.text.toString(),
                             }),
                           );
                           if(await canLaunchUrl(emailLaunchUri)){
                            await launchUrl(emailLaunchUri).then((value) {
                              Get.off(settingScreen());
                              detailController.text = '';
                            });

                           }else{
                             throw Exception("Could not launch$emailLaunchUri");}
                         }
                        },)),






                ],
              ),
            ),
          ),
        )
    );
  }
}