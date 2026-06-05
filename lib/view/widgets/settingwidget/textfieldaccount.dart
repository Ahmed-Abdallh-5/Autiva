import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constans/constansappvalues.dart';
import '../../../core/constans/textstyles/text.dart';

class TextformfieldAccont extends StatelessWidget {
  const TextformfieldAccont(
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
      this.imagesuffix});
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
  final String? imagesuffix;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyleClass.getTextStyle("medium", 16,
          color: Get.isDarkMode == true
              ? AppConstans.Whitecolor
              : AppConstans.blackcolor),
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      // style: TextStyle(color: AppConstans.blackcolor),
      // obscureText: obscureText == null || obscureText == false ? false : true,
      validator: validatorfunc,
      controller: textEditingController,
      keyboardType: textInputType,
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          // label: Text(
          //   lapeltext == null ? "" : lapeltext!,
          //   style: TextStyleClass.getTextStyle("weight400", 16,
          //       color: AppConstans.darkgreycolor),
          // ),
          // floatingLabelStyle: TextStyle(),
          focusedErrorBorder: UnderlineInputBorder(borderSide: BorderSide()),
          errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: Get.isDarkMode == true ? Colors.red : Colors.red)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: Get.isDarkMode == true
                      ? AppConstans.Whitecolor
                      : AppConstans.Bordercolor)),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
            color: Get.isDarkMode == true
                ? AppConstans.darkgreycolor
                : AppConstans.Bordercolor,
          )),
          hintText: hinttextstring,
          hintStyle: TextStyleClass.getTextStyle("weight400", 14,
              color: AppConstans.darkgreycolor),
          suffixIcon: Image.asset(imagesuffix!),
          // suffixIconColor: AppConstans.blackcolor,
          // prefixIcon: icon,
          // prefixIconColor: AppConstans.blackcolor,
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 0),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppConstans.Radious))),
    );
  }
}
