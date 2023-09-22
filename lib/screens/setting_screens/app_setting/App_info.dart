import 'package:connect_me/component/app_colors.dart';
import 'package:connect_me/component/app_images.dart';
import 'package:connect_me/component/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class appInfo extends StatefulWidget {
  const appInfo({super.key});

  @override
  State<appInfo> createState() => _appInfoState();
}

class _appInfoState extends State<appInfo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ConnectMe",style: appTextstyle.normalText(FontWeight: FontWeight.bold,fontSize: 20,Colors: appColor.blue)),
            Text("version: 1.0.0+1",style: appTextstyle.normalText()),
            space(20),
          Center(
            child: SizedBox(
              height: 150,
              width: 150,
              child: Image.asset(appImage.splashicon.toString()),
            ),
          ),space(10),
            Text("© 2022 - 2023 ConnectMe inc",style: appTextstyle.normalText()),
          ],
        ),
      ),
    );
  }
}
