import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constans/textstyles/text.dart';

class TextDectecot extends StatelessWidget {
  const TextDectecot(
      {super.key,
      required this.text,
      required this.ontap,
      this.color,
      this.alignment = Alignment.bottomLeft,
      this.bootomstatus = true,
      this.smallfont = false,
      this.fontsize

      // Default value is assigned here
      });

  final String text;
  final double? fontsize;
  final VoidCallback? ontap;
  final Color? color;
  final AlignmentGeometry alignment;
  final bool bootomstatus;
  final bool? smallfont;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Align(
        alignment: alignment,
        child: Text(
          text,
          style: TextStyleClass.getTextStyle(
            "Bold",
            12.sp,
            color: color,
          ),
        ),
      ),
    );
  }
}
