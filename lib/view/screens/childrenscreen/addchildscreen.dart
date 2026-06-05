import 'package:autiva/view/screens/childrenscreen/adddata.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constans/constansappvalues.dart';
import '../../sharedwidgets/sharedbuttom.dart';
import '../../widgets/home/header.dart';

class ChildDataScreen extends StatelessWidget {
  const ChildDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HomeHeader(
            name: "Child's Data",
            desc: "Add your child's data to get started",
            // action: true,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppConstans.PaddingHorizontalAuth),
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Get.isDarkMode
                        ? AppConstans.secondblackcolor
                        : Colors.white,
                    borderRadius: BorderRadius.circular(AppConstans.Radious),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withOpacity(0.1),
                        ),
                        child: const Icon(Icons.person_outline, size: 40),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        "No children added yet",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Add your child's data to track assessments and results in a personalized way.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      const SizedBox(height: 20),
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
            ),
          )
        ],
      ),
    );
  }
}

void showAddChildSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return const AddChildSheet();
    },
  );
}
