import 'package:connect_me/component/app_colors.dart';
import 'package:connect_me/component/text_style.dart';
import 'package:flutter/material.dart';

class profile_setting_field extends StatefulWidget {
  final String? title,labelText;
  final Widget? prefixIcons;
  final Widget? suffixIcon;
  final bool? obsecureText,enabled;
  final TextEditingController? controller;
  final  Function(String)? ontap;
  final FormFieldValidator? validator;
  const profile_setting_field({super.key, this.title, this.controller, this.prefixIcons, this.suffixIcon, this.labelText,this.obsecureText, this.ontap, this.validator, this.enabled});

  @override
  State<profile_setting_field> createState() => _profile_setting_fieldState();
}

class _profile_setting_fieldState extends State<profile_setting_field> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration( color: appColor.white_blue,
        borderRadius: BorderRadius.circular(12)
      ),
      child: TextFormField(

        enabled: widget.enabled,// will disable paste operation

        validator: widget.validator ,
        onChanged: widget.ontap,
        obscureText: widget.obsecureText!,
        style: appTextstyle.normalText(Colors: Colors.black),
        controller: widget.controller,
        decoration: InputDecoration(
          isDense: true,
          prefixIcon: widget.prefixIcons,
          suffixIcon: widget.suffixIcon,
          hintText: widget.title,
          hintStyle: appTextstyle.normalText(Colors: Colors.black),
          labelStyle: appTextstyle.normalText(),
          labelText: widget.labelText,
          prefixIconColor: Colors.grey,
          suffixIconColor:  appColor.blue,
          iconColor: Colors.grey,
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 15),
        ),
      ),
    );
  }
}

