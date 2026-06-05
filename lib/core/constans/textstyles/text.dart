import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../services/settingservices.dart';

class TextStyleClass {
  late Settingservices settingservices;
  Locale? language;

  // Define TextStyles for Roboto font
  static const TextStyle robotoRegular = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.normal,
  );
  static const TextStyle robotoWeight100 = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w100,
  );
  static const TextStyle robotoWeight200 = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w200,
  );
  static const TextStyle robotoWeight300 = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w300,
  );
  static const TextStyle robotoWeight400 = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
  );
  static const TextStyle robotoWeight500 = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  );
  static const TextStyle robotoWeight600 = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w600,
  );
  static const TextStyle robotoWeight700 = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w700,
  );
  static const TextStyle robotoMedium = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w600,
  );
  static const TextStyle robotoBold = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.bold,
  );

  // Define TextStyles for Cairo font
  static const TextStyle cairoRegular = TextStyle(
    fontFamily: 'Cairo',
    fontWeight: FontWeight.normal,
  );
  static const TextStyle cairoWeight100 = TextStyle(
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w100,
  );
  static const TextStyle cairoWeight200 = TextStyle(
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w200,
  );
  static const TextStyle cairoWeight300 = TextStyle(
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w300,
  );
  static const TextStyle cairoWeight400 = TextStyle(
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w400,
  );
  static const TextStyle cairoWeight500 = TextStyle(
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w500,
  );
  static const TextStyle cairoWeight600 = TextStyle(
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w600,
  );
  static const TextStyle cairoWeight700 = TextStyle(
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w700,
  );
  static const TextStyle cairoMedium = TextStyle(
    fontFamily: 'Cairo',
    fontWeight: FontWeight.w500,
  );
  static const TextStyle cairoBold = TextStyle(
    fontFamily: 'Cairo',
    fontWeight: FontWeight.bold,
  );

  // Method to get the appropriate TextStyle based on language and style type
  static TextStyle getTextStyle(
    String type,
    double fontSize, {
    Color? color,
  }) {
    final settingservices = Get.find<Settingservices>();
    String lang = settingservices.sharedPref.getString("lang") ?? 'en';

    TextStyle baseStyle;

    if (lang == 'ar') {
      // Arabic language - Cairo font conditions
      switch (type.toLowerCase()) {
        case 'weight100':
          baseStyle = cairoWeight100;
          break;
        case 'weight200':
          baseStyle = cairoWeight200;
          break;
        case 'weight300':
          baseStyle = cairoWeight300;
          break;
        case 'weight400':
          baseStyle = cairoWeight400;
          break;
        case 'weight500':
        case 'medium':
          baseStyle = cairoWeight500;
          break;
        case 'weight600':
          baseStyle = cairoWeight600;
          break;

        case 'weight700':
        case 'bold':
          baseStyle = cairoWeight700;
          break;
        default:
          baseStyle = cairoRegular;
          break;
      }
    } else {
      // English language - Roboto font conditions
      switch (type.toLowerCase()) {
        case 'weight100':
          baseStyle = robotoWeight100;
          break;
        case 'weight200':
          baseStyle = robotoWeight200;
          break;
        case 'weight300':
          baseStyle = robotoWeight300;
          break;
        case 'weight400':
          baseStyle = robotoWeight400;
          break;
        case 'weight500':
        case 'medium':
          baseStyle = robotoWeight500;
          break;
        case 'weight600':
          baseStyle = robotoWeight600;
          break;
        case 'weight700':
        case 'bold':
          baseStyle = robotoWeight700;
          break;
        default:
          baseStyle = robotoRegular;
          break;
      }
    }

    // Apply fontSize and color if provided
    return baseStyle.copyWith(
      fontSize: fontSize,
      color: color,
    );
  }
}
