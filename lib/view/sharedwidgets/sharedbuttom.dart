import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constans/constansappvalues.dart';
import '../../core/constans/textstyles/text.dart';

class Sharedbuttom extends StatelessWidget {
  const Sharedbuttom(
      {super.key,
      this.onpreesed,
      required this.text,
      required this.hight,
      this.isEnabled = true,
      this.color,
      this.boredercolor,
      this.textrcolor = AppConstans.Whitecolor

      // Default value is true
      });

  final VoidCallback? onpreesed;
  final String text;
  final double? hight;
  final bool isEnabled;
  final Color? color;
  final Color? boredercolor;
  final Color? textrcolor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: hight,
      child: ElevatedButton(
        onPressed: isEnabled ? onpreesed : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: isEnabled
              ? const Color(0xff1C8EA3)
              : const Color(0xff1C8EA3).withOpacity(0.4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          text,
          style: TextStyleClass.getTextStyle(
            "weight400",
            AppConstans.Width / 24,
            color: textrcolor,
          ),
        ),
      ),
    );
  }
}
