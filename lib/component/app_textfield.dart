import 'package:connect_me/component/app_colors.dart';
import 'package:connect_me/component/text_style.dart';
import 'package:flutter/material.dart';

class appTextfield extends StatefulWidget {
 final String? title,labelText;
 final Widget? prefixIcons;
 final Widget? suffixIcon;
 final bool? obsecureText;
 final TextEditingController? controller;
 final  Function(String)? ontap;
 final FormFieldValidator? validator;
  const appTextfield({super.key, this.title, this.controller, this.prefixIcons, this.suffixIcon, this.labelText,this.obsecureText, this.ontap, this.validator});

  @override
  State<appTextfield> createState() => _appTextfieldState();
}

class _appTextfieldState extends State<appTextfield> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(   color: appColor.white_blue,
        borderRadius: BorderRadius.circular(10)
      ),
      child: TextFormField(
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
          labelText: widget.labelText,
          prefixIconColor: Colors.grey,
          suffixIconColor: Colors.grey,
          iconColor: Colors.grey,
         hintStyle: appTextstyle.normalText(Colors: Colors.black),
          labelStyle: appTextstyle.normalText(),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: appColor.blue,width: 2),
              borderRadius: BorderRadius.circular(12)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}

