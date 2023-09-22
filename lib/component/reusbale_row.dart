import 'package:connect_me/component/app_colors.dart';
import 'package:connect_me/component/text_style.dart';
import 'package:flutter/material.dart';

class reusbale_row extends StatefulWidget {
 final String? title,title2;
 final IconData? icon;
 final Color? color;
 final VoidCallback? onPressed;
  const reusbale_row({super.key, this.title, this.icon, this.color, this.title2, this.onPressed});

  @override
  State<reusbale_row> createState() => _reusbale_rowState();
}

class _reusbale_rowState extends State<reusbale_row> {
  @override
  Widget build(BuildContext context) {
    return ListTile(contentPadding: EdgeInsets.zero,
      onTap: widget.onPressed,
      leading: CircleAvatar(
        child: Icon(widget.icon,color: appColor.blue,),
        backgroundColor: appColor.white_blue,),
      title: Text(widget.title.toString(),style: TextStyle(fontWeight: FontWeight.w500),),
      subtitle: Text(widget.title2.toString(),),
      trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,size: 20,),
    );
  }
}
