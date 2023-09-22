import 'package:connect_me/component/app_colors.dart';
import 'package:connect_me/screens/auth/login_screen.dart';
import 'package:connect_me/utils/routes/routes.dart';
import 'package:connect_me/utils/routes/routes_name.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {

  
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
    runApp(DevicePreview(
      enabled: false,
      builder: (context) => MyApp(), // Wrap your app
    ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      color: appColor.blue,
      debugShowCheckedModeBanner: false,
      title: 'ConnectME',
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      initialRoute: RoutesName.dashboardScreen,
      onGenerateRoute: Routes.generateRoutes,
    );
  }
}

