import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/children/childrendata.dart';
import '../../../core/constans/constansappvalues.dart';

class ChildCard extends GetView<ChildrenDataControllerImp> {
  final int index;

  const ChildCard({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final child = controller.childrendata[index];

    final bool isSelected = controller.selectedChildIndex == index;

    return InkWell(
      onTap: () {
        controller.selectChild(index);
      },
      borderRadius: BorderRadius.circular(AppConstans.Radious),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Get.isDarkMode ? AppConstans.secondblackcolor : Colors.white,
          borderRadius: BorderRadius.circular(AppConstans.Radious),
          border: Border.all(
            color: isSelected ? AppConstans.primary : Colors.transparent,
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.05),
              blurRadius: 8,
            ),
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 28,
              child: Text(
                child["name"].toString().substring(0, 1).toUpperCase(),
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    child["name"] ?? "",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Age : ${child["age"] ?? "-"}",
                  ),
                  const SizedBox(height: 2),
                  Text(
                    "Gender : ${child["gender"] ?? "-"}",
                  ),
                ],
              ),
            ),
            Radio<int>(
              value: index,
              groupValue: controller.selectedChildIndex,
              onChanged: (value) {
                controller.selectChild(index);
              },
            ),
          ],
        ),
      ),
    );
  }
}
