import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AppConstans {
  //////////logos////////////////////////
  static const String logodark = "images/Screenshot 2026-03-14 m.png";
  static const String logolight = "images/Screenshot 2026-03-14 m.png";

  ///////////////////lottie//////////////
  static const String loadinglottiedark = "lottie/Service.json";
  static const String loadinglottielight = "lottie/Service.json";

  static const String Searchdarktheme = "lottie/noresultdarktheme.json";
  static const String Searchlighttheme = "lottie/noreultlighttheme.json";

  /////////////////padding////////////////////

  static final double Hight = Get.height;
  static final double Width = Get.width;

  static final double commonsizeboxhiggt = 24.h;
  static final double PaddingHorizontalAuth = 16.w;
  static final double distanceapppar = 32.h;
  static final double distancebetweentextfield = 28.h;
  static final double authbottomsize = 48.h;
  static final double distancefrombottombar = 24.h;

  static final double Sizeboxsize = Hight * .03;
  static final double Radious = 16.r;

  //////////////////Loading Indicator////////////////////////////

  static final double IndicatorWidth = Width / 2;
  static final double IndicatorHight = Hight / 2;

  ///////////////////////////////////////Colors//////////////////////

  static const primary = Color(0xff1C8EA3);
  static const primaryDark = Color(0xff0F6C7A);
  static const orange = Color(0xffEF6C00);
  static const purple = Color(0xff6A1B9A);

  // static const Color MainColor = Color.fromARGB(255, 94, 141, 0);

  static const Color maincolordarktheme = Color.fromARGB(255, 172, 229, 56);
  static const Color maincolorlighttheme = Color.fromARGB(255, 139, 195, 25);
  static const Color nonenabledbuttomcolor = Color.fromARGB(105, 171, 229, 56);
  static const Color grey = Color.fromARGB(255, 144, 144, 144);
  static const Color blackcolor = Colors.black;
  // static const Color backgroundblackcolor = Color.fromARGB(255, 94, 141, 0);
  static const Color secondblackcolor = const Color.fromARGB(255, 30, 30, 31);
  static const Color Whitecolor = Color.fromARGB(255, 255, 255, 255);
  // static const Color themecolor = Color.fromARGB(255, 94, 141, 0);
  static const Color darkgreycolor = Color.fromARGB(255, 106, 103, 106);
  static const Color darkgreycolordarktheme =
      Color.fromARGB(255, 161, 161, 161);
  // static const Color SecondColor = Color.fromARGB(255, 1, 43, 65);
  static const Color IconColor = Colors.black;
  static const Color Bordercolor = Color.fromARGB(255, 227, 227, 227);
  static const Color ButtomColor = Color.fromARGB(255, 41, 71, 253);

//////////////////////////////////theme mode////////////////////

////////////////////////BACKEND///////////////////////////

  static const String contenttype = "application/json";

  static const String accepct = "application/json";

///////////////////////////boolen values////////////////
  static bool resizebutton = false;
}
