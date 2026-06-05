import 'package:flutter/material.dart';

import '../../../core/constans/constansappvalues.dart';
import '../../../core/constans/textstyles/text.dart';

class SettingScreenText extends StatelessWidget {
  const SettingScreenText({super.key, this.text});
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyleClass.getTextStyle(
        "Regular",
        AppConstans.Width * .05,
      ),
    );
  }
}
