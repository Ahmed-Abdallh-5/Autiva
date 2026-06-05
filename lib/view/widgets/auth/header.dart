import 'package:autiva/core/constans/constansappvalues.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthHeader extends StatelessWidget {
  final String? maintext;
  final String? subtext;

  const AuthHeader({super.key, this.maintext, this.subtext});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 64.w,
          height: 64.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
            boxShadow: const [
              BoxShadow(
                blurRadius: 10,
                color: Colors.black12,
              )
            ],
          ),
          child: Image.asset(
            AppConstans.logodark,
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          maintext!,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          subtext!,
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}
