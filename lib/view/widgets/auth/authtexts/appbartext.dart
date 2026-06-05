import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constans/textstyles/text.dart';

class Appbartext extends StatelessWidget {
  const Appbartext({super.key, required this.appbartext});
  final String appbartext;
  @override
  Widget build(BuildContext context) {
    return Text(
      appbartext,
      style: TextStyleClass.getTextStyle("medium", 20.sp),
    );
  }
}
