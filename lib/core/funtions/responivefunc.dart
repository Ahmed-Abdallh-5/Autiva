import 'package:flutter/material.dart';

double responsiveFunction(BuildContext context, double heightFactor) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;

  if (screenWidth < 360) {
    return screenHeight * heightFactor; // Small phones
  } else if (screenWidth >= 360 && screenWidth < 600) {
    return screenHeight * (heightFactor + 0.05); // Medium phones
  } else if (screenWidth >= 600 && screenWidth < 900) {
    return screenHeight * (heightFactor + 0.1); // Tablets
  } else {
    return screenHeight * (heightFactor + 0.15); // Large screens
  }
}

double responsiveFunctionwidth(BuildContext context, double widthFactor) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;

  if (screenWidth < 360) {
    return screenWidth * widthFactor; // Small phones
  } else if (screenWidth >= 360 && screenWidth < 600) {
    return screenWidth * (widthFactor + 0.05); // Medium phones
  } else if (screenWidth >= 600 && screenWidth < 900) {
    return screenWidth * (widthFactor + 0.1); // Tablets
  } else {
    return screenWidth * (widthFactor + 0.15); // Large screens
  }
}
