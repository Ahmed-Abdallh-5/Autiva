import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/children/children.dart';
import '../../../core/constans/constansappvalues.dart';
import '../../sharedwidgets/sharedbuttom.dart';
import '../../widgets/auth/textformfield.dart';
import '../../widgets/children/gemderbuttom.dart';

class AddChildSheet extends StatelessWidget {
  const AddChildSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChildrenControllerImp>(
      init: ChildrenControllerImp(),
      builder: (controller) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.6,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              left: AppConstans.PaddingHorizontalAuth,
              right: AppConstans.PaddingHorizontalAuth,
              bottom: MediaQuery.of(context).viewInsets.bottom,
              top: 10,
            ),
            child: SingleChildScrollView(
              child: Form(
                key: controller.formKeylogin,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Add New Child",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () => Get.back(),
                          icon: const Icon(Icons.close),
                        )
                      ],
                    ),

                    const SizedBox(height: 10),

                    Textformfield(
                      hinttextstring: "Enter child's name",
                      lapeltext: "Child's Name",
                      textEditingController: controller.name,
                      validatorfunc: (v) {
                        if (v == null || v.isEmpty) return "Required";
                      },
                    ),

                    const SizedBox(height: 12),

                    GestureDetector(
                      onTap: () => controller.pickDate(context),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 12),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          controller.selectedDate == null
                              ? "Select Date of Birth"
                              : "${controller.selectedDate!.year}-${controller.selectedDate!.month}-${controller.selectedDate!.day}",
                          style: TextStyle(
                            color: controller.selectedDate == null
                                ? Colors.grey
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 12),

                    Row(
                      children: [
                        Expanded(
                          child: GenderButton(
                            text: "Male",
                            isSelected: controller.gender == "Male",
                            onTap: () => controller.selectGender("Male"),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: GenderButton(
                            text: "Female",
                            isSelected: controller.gender == "Female",
                            onTap: () => controller.selectGender("Female"),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),

                    /// 🏥 Medical
                    Textformfield(
                      hinttextstring:
                          "Enter child's medical history (optional)",
                      lapeltext: "Medical History",
                      maxlines: 3,
                      textEditingController: controller.medicalHistory,
                      validatorfunc: (v) {},
                    ),

                    const SizedBox(height: 20),

                    Row(
                      children: [
                        Expanded(
                          child: Sharedbuttom(
                            text: "Save",
                            hight: 50,
                            onpreesed: () {
                              controller.addchild();
                            },
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Sharedbuttom(
                            text: "Cancel",
                            hight: 50,
                            color: Colors.grey,
                            textrcolor: Colors.black,
                            onpreesed: () => Get.back(),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
