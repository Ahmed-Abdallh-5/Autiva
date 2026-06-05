import 'package:autiva/core/constans/constansappvalues.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constans/textstyles/text.dart';

class Textformfield extends StatelessWidget {
  const Textformfield(
      {super.key,
      required this.hinttextstring,
      this.icon,
      this.textInputType,
      required this.textEditingController,
      required this.validatorfunc,
      this.obscureText,
      this.showpassword,
      this.iconsuffix,
      this.onFieldSubmitted,
      this.onChanged,
      this.lapeltext,
      this.maxlines,
      this.errortext,
      this.iserroredtext = false,
      this.isphonetext = false,
      this.preixtext});

  final String hinttextstring;
  final Icon? icon;
  final TextInputType? textInputType;
  final TextEditingController? textEditingController;
  final String? Function(String?)? validatorfunc;
  final bool? obscureText;
  final void Function()? showpassword;
  final Icon? iconsuffix;
  final void Function(String)? onFieldSubmitted;
  final void Function(String)? onChanged;
  final String? lapeltext;
  final String? errortext;
  final bool? iserroredtext;
  final bool? isphonetext;
  final String? preixtext;
  final int? maxlines;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(AppConstans.Radious);

    return TextFormField(
      onChanged: onChanged,
      maxLines: maxlines ?? 1,
      onFieldSubmitted: onFieldSubmitted,
      style: TextStyle(),
      obscureText: obscureText ?? false,
      validator: validatorfunc,
      controller: textEditingController,
      keyboardType: textInputType,
      decoration: InputDecoration(
        errorText: iserroredtext == true ? errortext : null,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        label: Text(
          lapeltext ?? "",
          style: TextStyleClass.getTextStyle(
            "weight400",
            12.sp,
            color: Get.isDarkMode
                ? AppConstans.darkgreycolordarktheme
                : AppConstans.darkgreycolor,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Get.isDarkMode
                ? AppConstans.darkgreycolordarktheme
                : AppConstans.Bordercolor,
          ),
          borderRadius: borderRadius,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: borderRadius,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Get.isDarkMode
                ? AppConstans.darkgreycolordarktheme
                : AppConstans.Bordercolor,
          ),
          borderRadius: borderRadius,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Get.isDarkMode
                ? AppConstans.darkgreycolordarktheme
                : AppConstans.Bordercolor,
          ),
          borderRadius: borderRadius,
        ),
        hintText: hinttextstring,
        hintStyle: TextStyleClass.getTextStyle(
          "weight400",
          12.sp,
          color: Get.isDarkMode
              ? AppConstans.darkgreycolordarktheme
              : Color.fromARGB(186, 211, 209, 211),
        ),
        suffixIcon: iconsuffix != null
            ? InkWell(
                child: iconsuffix,
                onTap: showpassword,
              )
            : null,
        contentPadding:
            EdgeInsets.symmetric(vertical: 11.0.h, horizontal: 16.0.w),
      ),
    );
  }
}
