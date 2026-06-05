import 'package:autiva/view/screens/childrenscreen/addchildscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constans/constansappvalues.dart';
import '../../sharedwidgets/sharedbuttom.dart';

class EmptyChildrenWidget extends StatelessWidget {
  const EmptyChildrenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppConstans.PaddingHorizontalAuth,
        ),
        child: Container(
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: Get.isDarkMode ? AppConstans.secondblackcolor : Colors.white,
            borderRadius: BorderRadius.circular(AppConstans.Radious),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.05),
                blurRadius: 10,
              )
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.child_care,
                size: 70,
              ),
              const SizedBox(height: 20),
              const Text(
                "No Children Added",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Add your child's profile before starting an assessment.",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 25),
              Sharedbuttom(
                text: "+ Add Child",
                hight: 50,
                onpreesed: () {
                  showAddChildSheet(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
