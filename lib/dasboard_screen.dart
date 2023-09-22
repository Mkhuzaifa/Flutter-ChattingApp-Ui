import 'package:connect_me/component/app_colors.dart';
import 'package:connect_me/component/text_style.dart';
import 'package:connect_me/screens/chatting_screens/chat_screen.dart';
import 'package:connect_me/screens/setting_screens/profile_screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';


class dashboardScreen extends StatefulWidget {
  const dashboardScreen({Key? key}) : super(key: key);

  @override
  State<dashboardScreen> createState() => _dashboardScreenState();
}

class _dashboardScreenState extends State<dashboardScreen> {
  final controler = PersistentTabController(initialIndex: 0);


  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      FlutterNativeSplash.remove();
    });
    super.initState();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child:  Scaffold(
          appBar:  PreferredSize(
            preferredSize: Size.fromHeight(100),
            child:  Container(
              color: Colors.grey.withOpacity(0.1),
              child:  SafeArea(
                child: Column(
                  children: [
                     Expanded(child:Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 15),
                       child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("Connect Me",style: appTextstyle.normalText(fontSize: 22,FontWeight: FontWeight.bold
                           ,Colors: appColor.blue),),
                           Icon(Icons.menu),

                         ],
                       ),
                     )),
                     TabBar(indicatorColor: appColor.blue,indicatorPadding: EdgeInsets.symmetric(horizontal: 40),
                      tabs: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child:
                          Text("Chat",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child:
                          Text("Profile",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          body:  TabBarView(
            children: [
              chatScreen(),
              profileScreen(),
            ],
          ),
        ),
      ),
    );
    // return Scaffold(
    //   body: screen[index],
    //   bottomNavigationBar: NavigationBarTheme(
    //     data: NavigationBarThemeData(
    //       indicatorColor: Colors.grey.shade200,
    //     ), child: NavigationBar(
    //     height: 60,
    //     backgroundColor: Colors.white,
    //
    //     elevation: 0,
    //     selectedIndex: index,
    //     onDestinationSelected: (index) => setState(()=> this.index = index),
    //     destinations: [
    //       NavigationDestination(icon: Icon(Icons.messenger_outline), label: "Chat"),
    //       NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
    //     ],
    //   ),
    //   ),
    // );
  }
}

