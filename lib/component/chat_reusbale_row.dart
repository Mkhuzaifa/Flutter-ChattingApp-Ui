import 'package:connect_me/component/app_colors.dart';
import 'package:connect_me/component/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:get/get.dart';

import '../screens/chatting_screens/user_chatting.dart';
class chatReusbalerow extends StatefulWidget {
  final String? title,title2;
  final IconData? icon;
  final Color? color;
  final VoidCallback? onPressed;
  final  String? imageurl;
  const chatReusbalerow({super.key, this.title, this.icon, this.color, this.title2, this.onPressed, this.imageurl});

  @override
  State<chatReusbalerow> createState() => _chatReusbalerowState();
}

class _chatReusbalerowState extends State<chatReusbalerow> {



  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        ListTile(contentPadding: EdgeInsets.zero,
            onTap: () {
              // Get.to(userChatting());
            },
            title: Text(widget.title.toString()),
            trailing: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(radius: 10,backgroundColor: appColor.blue,
                  child: Text("9",style: TextStyle(color: Colors.white,fontSize: 10),)),
            ),
            subtitle:  Text("Hey, Connect Me "),
            leading: AdvancedAvatar(
              size: 55,
              statusSize: 10,
              statusColor: Colors.green,
              image: NetworkImage(widget.imageurl.toString()),
            )
        ),
        Divider(),
      ],
    );
  }
}
