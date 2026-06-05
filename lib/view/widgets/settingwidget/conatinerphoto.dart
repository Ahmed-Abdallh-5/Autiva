import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleContainerImage extends StatelessWidget {
  const CircleContainerImage({super.key, this.text, required this.image});
  final String? text;

  final ImageProvider<Object> image;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100.h,
        width: 100.w,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            // borderRadius: BorderRadius.circular(200),
            image: DecorationImage(image: image, fit: BoxFit.cover)));
  }
}
