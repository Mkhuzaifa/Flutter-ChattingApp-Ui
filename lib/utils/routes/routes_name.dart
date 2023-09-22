import 'package:connect_me/screens/auth/login_screen.dart';
import 'package:connect_me/screens/auth/signup_screen.dart';
import 'package:connect_me/screens/setting_screens/profile_screens/profile_screen.dart';
import 'package:connect_me/utils/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:page_animation_transition/animations/bottom_to_top_transition.dart';
import 'package:page_animation_transition/animations/fade_animation_transition.dart';
import 'package:page_animation_transition/animations/left_to_right_transition.dart';
import 'package:page_animation_transition/animations/right_to_left_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

import '../../dasboard_screen.dart';
import '../../screens/Privacy_Policy/PrivacyPolicyScreen.dart';
import '../../screens/Privacy_Policy/TermsAndConditions.dart';
import '../../screens/setting_screens/profile_screens/edit_profile.dart';
import '../../screens/setting_screens/setting_screen.dart';


class Routes{

  static Route<dynamic>  generateRoutes(RouteSettings settings){
    final argum = settings.arguments;



    switch(settings.name){
      case RoutesName.profileScreen:
        return PageAnimationTransition(page:  profileScreen(), pageAnimationType: LeftToRightTransition());
      case RoutesName.login:
        return MaterialPageRoute(builder:  (BuildContext context) => loginScreen());
      case RoutesName.signUp:
        return MaterialPageRoute(builder:  (BuildContext context) => signUpScreen());
      case RoutesName.settingScreen:
        return   PageAnimationTransition(page:  settingScreen(), pageAnimationType: FadeAnimationTransition());
      case RoutesName.PrivacyPolicyScreen:
        return  PageAnimationTransition(page:  PrivacyPolicyScreen(), pageAnimationType: RightToLeftTransition());
      case RoutesName.TermsAndConditions:
        return  PageAnimationTransition(page:  TermsAndConditions(), pageAnimationType: LeftToRightTransition());
      case RoutesName.editProfile:
        return  PageAnimationTransition(page:  editProfile(), pageAnimationType: BottomToTopTransition());
      case RoutesName.dashboardScreen:
        return  PageAnimationTransition(page:  dashboardScreen(), pageAnimationType: BottomToTopTransition());
      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text("No route defined"),
            ),
          );
        });
    }
  }


}