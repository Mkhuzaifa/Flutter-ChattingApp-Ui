

import 'package:connect_me/component/app_colors.dart';
import 'package:connect_me/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../component/app_button.dart';
import '../../component/app_textfield.dart';
import '../../component/text_style.dart';
import '../../utils/routes/routes.dart';
import '../../utils/utils.dart';
import '../setting_screens/profile_screens/profile_screen.dart';

class signUpScreen extends StatefulWidget {
  const signUpScreen({super.key});

  @override
  State<signUpScreen> createState() => _signUpScreenState();
}

class _signUpScreenState extends State<signUpScreen> {

  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();
  ValueNotifier<bool> _obsecurePassword = ValueNotifier<bool>(true);
  ValueNotifier<bool> _obsecurePassword1 = ValueNotifier<bool>(true);

  final key = GlobalKey<FormState>();

  @override
  void initState() {
    passwordController.addListener(() { setState(() {});});
    confirmpasswordController.addListener(() { setState(() {});});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var heighttop = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Form(
        key: key,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [

                  space(height/10),
                  Text("Create Account",style:
                  appTextstyle.normalText(Colors: appColor.blue,fontSize: 35,FontWeight: FontWeight.bold),),

                  space(10),
                  Text("Create an account so you can explore an the existing ConnectMe",style:
                  appTextstyle.normalText(fontSize: 23,FontWeight: FontWeight.bold),textAlign: TextAlign.center),

                  space(height/20),

                  appTextfield(title: "Name",controller: nameController,prefixIcons: Icon(Icons.person), labelText: "Name",obsecureText: false),
                  space(20),

                  appTextfield(title: "Email",controller: emailController,prefixIcons: Icon(Icons.alternate_email), labelText: "Email",obsecureText: false),
                  space(20),

                  ValueListenableBuilder(valueListenable: _obsecurePassword,
                    builder: (context, value, child) {
                    return appTextfield(title: "Password",
                        controller: passwordController,
                        suffixIcon:passwordController.text.length > 0? InkWell(onTap: () {
                          _obsecurePassword.value = !_obsecurePassword.value;
                        },
                            child: Icon(_obsecurePassword.value?Icons.visibility_off:Icons.visibility)):null,
                        prefixIcons: Icon(Icons.lock_outline),
                        labelText: "Password",obsecureText: _obsecurePassword.value);
                  },),
                  space(20),
                  ValueListenableBuilder(valueListenable: _obsecurePassword1, builder:
                  (context, value, child) {
                   return appTextfield(title: "ConfirmPassword", controller: confirmpasswordController,
                        suffixIcon:confirmpasswordController.text.length > 0? InkWell(
                            onTap :(){
                              _obsecurePassword1.value = !_obsecurePassword1.value;
                            },
                            child: Icon(_obsecurePassword1.value?Icons.visibility_off:Icons.visibility)):null,
                        prefixIcons: Icon(Icons.lock_open_outlined),
                        labelText: "Password",obsecureText: _obsecurePassword1.value);
                  },),

                  space(height/30),

                  appButton(title: "Sign Up",onPressed: () {
                    // Get.to(profileScreen());
                    Navigator.pushNamed(context, RoutesName.profileScreen);

                    if(nameController == null || nameController.text.isEmpty){
                      return Utils.toastMessage("Name is required", context);
                    }

                    //// Email Validation ----------------->
                    if (emailController == null || emailController.text.isEmpty)
                      return Utils.toastMessage("Email is required", context);
                    String pattern = r'\w+@\w+\.\w+';
                    RegExp regex = RegExp(pattern);
                    if (!regex.hasMatch(emailController.text)){
                      return Utils.toastMessage("Invalid E-mail Address format.", context);

                      //// Password Validation ----------------->

                    } if (passwordController.text.isEmpty) {
                      return Utils.toastMessage("Password is required.", context);}
                    if (passwordController.text.length < 6) {
                      return Utils.toastMessage("Password should have more than 6 characters.", context);
                    }
                    final RegExp letterRegex = RegExp(r'[a-zA-Z]');
                    final RegExp digitRegex = RegExp(r'[0-9]');
                    if (!letterRegex.hasMatch(passwordController.text) || !digitRegex.hasMatch(passwordController.text)) {
                      return Utils.toastMessage("Password both letters and numbers.", context);

                    }
                    if (int.tryParse(passwordController.text) != null) {
                      return Utils.toastMessage("Password cannot consist only of numbers.", context);
                    }else{if (confirmpasswordController.text.isEmpty) {
                      return Utils.toastMessage("Password is required.", context);
                    }if (confirmpasswordController.text.length < 6) {
                      return Utils.toastMessage("Password should have more than 6 characters.", context);}
                    final RegExp letterRegex = RegExp(r'[a-zA-Z]');
                    final RegExp digitRegex = RegExp(r'[0-9]');
                    if (!letterRegex.hasMatch(confirmpasswordController.text) || !digitRegex.hasMatch(confirmpasswordController.text)) {
                      return Utils.toastMessage("Password both letters and numbers.", context);}

                    //// Confirm Password Validation ----------------->

                    if (int.tryParse(confirmpasswordController.text) != null) {
                      return Utils.toastMessage("Password cannot consist only of numbers.", context);
                    }else if(passwordController.text != confirmpasswordController.text){
                      return Utils.toastMessage("Password not match.", context);
                    }else{



                    }
                    }




                  },),

                  space(height/60),

                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already Have Account",style: TextStyle(color: appColor.blue,fontSize: 15),),
                      SizedBox(width: 4,),
                      InkWell(onTap: () {
                        Get.to(loginScreen());
                      },
                          child: Text("Sigin",style: appTextstyle.normalText(FontWeight: FontWeight.bold,Colors: appColor.blue),)),
                    ],
                  ),
                ],

              ),
            ),
          ),
        ),
      ),
    );
  }

}
