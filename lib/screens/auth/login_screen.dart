import 'package:connect_me/component/app_button.dart';
import 'package:connect_me/component/app_colors.dart';
import 'package:connect_me/component/text_style.dart';
import 'package:connect_me/screens/auth/signup_screen.dart';
import 'package:connect_me/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../component/app_textfield.dart';
import '../../utils/validata.dart';


class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final key = GlobalKey<FormState>();

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      FlutterNativeSplash.remove();
    });
    passwordController.addListener(() {
      setState(() {

      });
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var heighttop = MediaQuery.of(context).padding.top;
    ValueNotifier<bool> _obsecurePassword = ValueNotifier<bool>(true);

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
                  Text("Login here",style:
                  appTextstyle.normalText(Colors: appColor.blue,fontSize: 35,FontWeight: FontWeight.bold),),

                  space(10),
                  Text("Welcome back you've been missed!",style:
                  appTextstyle.normalText(fontSize: 25,FontWeight: FontWeight.bold),textAlign: TextAlign.center),

                  space(height*.1),

                  appTextfield(title: "Email",controller: emailController,
                      prefixIcons: Icon(Icons.alternate_email),
                      labelText: "Email",obsecureText: false),
                  space(20),



                  ValueListenableBuilder(valueListenable: _obsecurePassword,
                  builder: (context, value, child) {
                    return appTextfield(title: "Password",
                        controller: passwordController,
                        suffixIcon:passwordController.text.length > 0? InkWell(
                            onTap:() {
                          _obsecurePassword.value = !_obsecurePassword.value;
                        },
                            child: Icon(_obsecurePassword.value?Icons.visibility_off:Icons.visibility)):null,
                        labelText: "Password",
                        prefixIcons: Icon(Icons.lock_outline),obsecureText: _obsecurePassword.value);
                  },),

                  space(5),

                  Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forgot password?",style: appTextstyle.normalText(Colors: appColor.blue),),
                    ],
                  ),
                  space(height/30),

                  appButton(title: "Login",onPressed: () {



                    if (emailController == null || emailController.text.isEmpty)
                      return Utils.toastMessage("Email is required", context);
                    String pattern = r'\w+@\w+\.\w+';
                    RegExp regex = RegExp(pattern);
                    if (!regex.hasMatch(emailController.text)){
                      return Utils.toastMessage("Invalid E-mail Address format.", context);
                    } if (passwordController.text.isEmpty) {
                      return Utils.toastMessage("Password is required.", context);
                    }

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
                    }else{


                      print("Successfully -------------------------");

                    }


                  },),
                  space(height/60),

                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?",style: TextStyle(color: appColor.blue,fontSize: 15),),
                      SizedBox(width: 4,),
                      InkWell(onTap: () {
                        Get.to(signUpScreen());
                      },
                          child: Text("Sign up",style: appTextstyle.normalText(FontWeight: FontWeight.bold,Colors: appColor.blue),)),
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
