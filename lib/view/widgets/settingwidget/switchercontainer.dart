import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/settingcon/settingscreen.dart';
import '../../../core/constans/constansappvalues.dart';
import '../../../core/constans/textstyles/text.dart';

class ArrowContainer extends StatelessWidget {
  const ArrowContainer(
      {super.key,
      this.iconData,
      this.color,
      this.title,
      this.title2,
      this.value,
      this.function,
      this.activeColor,
      this.onChanged});
  final IconData? iconData;
  final Color? color;
  final String? title;
  final String? title2;
  final void Function(bool)? function;
  final bool? value;
  // final bool? value;
  final void Function(bool)? onChanged;
  final Color? activeColor;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Settingscreenimble>(
      builder: (settingscreenimble) => Row(
        children: [
          Container(
              height: AppConstans.Width / 8,
              width: AppConstans.Width / 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
              child: Icon(
                iconData,
                size: AppConstans.Width / 12,
              )),
          SizedBox(width: AppConstans.Width * .035),
          Text(
            title!,
            style: TextStyleClass.getTextStyle(
              "Regular",
              AppConstans.Width / 25,
            ),
          ),
          Spacer(),
          Switch(activeColor: activeColor, value: value!, onChanged: onChanged),
        ],
      ),
    );
  }
}
