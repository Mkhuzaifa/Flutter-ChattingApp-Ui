import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class appTextstyle{

  static TextStyle normalText ({double fontSize = 15,FontWeight FontWeight = FontWeight.normal,Color Colors = Colors.black}){
    return GoogleFonts.outfit(fontSize: fontSize,fontWeight: FontWeight,color: Colors,);

  }

}

Widget space(double? h){
  return SizedBox(height: h,);
}