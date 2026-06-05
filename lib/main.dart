import 'package:autiva/bindings/mybindings.dart';
import 'package:autiva/controller/chosselang/langcontroller.dart';
import 'package:autiva/core/constans/pages/pages.dart';
import 'package:autiva/core/constans/themedata.dart';
import 'package:autiva/core/localization/translatons.dart';

import 'package:autiva/core/services/settingservices.dart';
import 'package:autiva/view/screens/authscreen/login/login.dart';
import 'package:autiva/view/screens/childrenscreen/addchildscreen.dart';
import 'package:autiva/view/screens/childrenscreen/adddata.dart';
import 'package:autiva/view/screens/childrenscreen/childhistory.dart';
import 'package:autiva/view/screens/home/mainhomescreen.dart';
import 'package:autiva/view/screens/splashscreen/splashscreen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'view/screens/settingscreens/settingscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await intialservices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Settingservices settingservices = Get.find();
    langcontroller controller = Get.put(langcontroller());
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          translations: localizations(),
          locale: controller.langauge,
          getPages: pages,
          initialBinding: MyBindings(),
          debugShowCheckedModeBanner: false,
          darkTheme: customDarkTheme,
          themeMode: settingservices.sharedPref.getBool("IsSwitched") == true
              ? ThemeMode.dark
              : ThemeMode.light,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const MainHomescreen(),
        );
      },
    );
  }
}
