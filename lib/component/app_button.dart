import 'package:connect_me/component/app_colors.dart';
import 'package:connect_me/component/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class appButton extends StatefulWidget {
 final String? title;
 final VoidCallback? onPressed;
  const appButton({super.key, this.title, this.onPressed});

  @override
  State<appButton> createState() => _appButtonState();
}

class _appButtonState extends State<appButton> {
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: widget.onPressed,
      child: Container(
        height: 55,
        width: double.infinity,
        child: Center(child: Text(widget.title.toString(),style: appTextstyle.normalText(Colors: Colors.white),),),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: appColor.blue,
        ),
      ),
    );
  }
}
