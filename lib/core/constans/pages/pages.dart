import 'package:autiva/view/screens/home/uploadvideoscreen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../../view/screens/authscreen/forgetpasswordscreens/forgetpassword.dart';
import '../../../view/screens/authscreen/forgetpasswordscreens/resetpassword.dart';
import '../../../view/screens/authscreen/forgetpasswordscreens/successresetpassword.dart';
import '../../../view/screens/authscreen/forgetpasswordscreens/vertficationresetpass.dart';
import '../../../view/screens/authscreen/login/login.dart';
import '../../../view/screens/authscreen/signup/signup.dart';
import '../../../view/screens/authscreen/signup/successsignnup.dart';
import '../../../view/screens/authscreen/signup/vertficationsignup.dart';

import '../../../view/screens/childrenscreen/addchildscreen.dart';
import '../../../view/screens/childrenscreen/adddata.dart';
import '../../../view/screens/childrenscreen/childhistory.dart';
import '../../../view/screens/home/mainhomescreen.dart';
import '../../../view/screens/langscreen/chooselangscreen.dart';
import '../../../view/screens/settingscreens/aboutus.dart';
import '../../../view/screens/settingscreens/deleteaccountpage.dart';
import '../../../view/screens/settingscreens/privacyscreen.dart';
import '../../../view/screens/settingscreens/termsandconditions.dart';
import '../../../view/screens/splashscreen/splashscreen.dart';
import '../../middlware/mymiddlware.dart';

List<GetPage<dynamic>>? pages = [
  GetPage(name: "/", page: () => SplashScreen(), middlewares: [Mymiddlware()]),
  GetPage(name: "/chooselangscreen", page: () => chooselangscreen()),

  GetPage(name: "/loginsceen", page: () => LoginScreen()),
  GetPage(name: "/signup", page: () => SignupScreen()),
  GetPage(name: "/forgetpassword", page: () => ForgetpasswordScreen()),
  GetPage(name: "/resetpassword", page: () => ResetpasswordScreen()),
  GetPage(name: "/vertficode", page: () => Vertficationscreen()),
  GetPage(name: "/SuccesResetPassWord", page: () => SuccesResetPassWord()),
  GetPage(name: "/SuccesResetPassWord", page: () => SuccesSignUP()),

  GetPage(
      name: "/VertficationscreenSignUp",
      page: () => VertficationscreenSignUp()),
  GetPage(name: "/SuccesSignUP", page: () => SuccesSignUP()),
  GetPage(name: "/homescreen", page: () => MainHomescreen()),
  GetPage(name: "/childScreen", page: () => AddChildSheet()),
  GetPage(name: "/childHistoryScreen", page: () => MyChildrenScreen()),
  GetPage(name: "/childDataScreen", page: () => ChildDataScreen()),

  // // GetPage(name: "/home", page: () => Home()),
  // GetPage(name: "/homeScreen", page: () => Homescreen()),
  // GetPage(name: "/productsdetails", page: () => ProductDetails()),
  // GetPage(name: "/choosecountryscreen", page: () => ChooseCounteyScreen()),
  // // GetPage(name: "/myfavourrite", page: () => FavouriteScreen()),
  // GetPage(name: "/settingscreen", page: () => SettingScreeneScreen()),
  // // GetPage(name: "/editprofilescreen", page: () => EditProfile()),
  // // GetPage(name: "/changeCounteyscreen", page: () => ChangeCounteyscreen()),
  // // GetPage(name: "/avilableHoursScreen", page: () => AvilableHoursScreen()),
  // GetPage(name: "/viewallItems", page: () => ViewallItems()),
  // GetPage(name: "/viewallOffersScreen", page: () => ViewallOffersScreen()),
  GetPage(name: "/deleteAccountScreen", page: () => DeleteAccountScreen()),
  GetPage(name: "/uploadVideoScreen", page: () => UploadVideoScreen()),

  // GetPage(
  //     name: "/vertficationscreenLogin", page: () => VertficationscreenLogin()),
  // GetPage(
  //     name: "/vertficodeSettingPage",
  //     page: () => VertficationscreenSettingPage()),
  // GetPage(
  //     name: "/succesResetPassWordSettingPage",
  //     page: () => SuccesResetPassWordSettingPage()),
  // GetPage(name: "/checkMailScreen", page: () => CheckMailScreen()),
  // // GetPage(
  // //     name: "/resetpasswordSettingScreen",
  // //     page: () => ResetpasswordSettingScreen()),
  GetPage(name: "/aboutUsScreen", page: () => AboutUsScreen()),
  GetPage(name: "/privacyScreen", page: () => PrivacyScreen()),
  // GetPage(name: "/checkoutScreen", page: () => CheckoutScreen()),
  GetPage(
      name: "/termsAndConditionsScreen",
      page: () => TermsAndConditionsScreen()),
  // GetPage(name: "/changeLangScreen", page: () => ChangeLangScreen()),
  // GetPage(name: "/checkoutscreen", page: () => CheckOutScreen()),
  // // GetPage(name: "/ReviewPage", page: () => ReviewPage()),
  // GetPage(
  //     name: "/vertficationscreenLogin", page: () => VertficationscreenLogin()),
  // GetPage(name: "/tournmentScreen", page: () => TournmentScreen()),

  // GetPage(name: "/allFavouriteScreen", page: () => AllFavouriteScreen()),
  // GetPage(
  //     name: "/tornamentDetailsScreen", page: () => TornamentDetailsScreen()),

  // GetPage(
  //     name: "/vertficationscreenLogin", page: () => VertficationscreenLogin()),
  // GetPage(name: "/editProfleScreen", page: () => EditProfleScreen()),
  // GetPage(name: "/myAccountScreen", page: () => MyAccountScreen()),
  // GetPage(
  //     name: "/resetpasswordSettingpage",
  //     page: () => SettingResetpasswordScreen()),
];
