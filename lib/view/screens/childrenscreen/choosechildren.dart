import 'package:autiva/view/screens/childrenscreen/nochildrenscreen.dart';
import 'package:autiva/view/screens/home/uploadvideoscreen.dart';
import 'package:autiva/view/widgets/children/childrencard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/children/childrendata.dart';
import '../../../core/classes/statuerequest.dart';
import '../../../core/constans/constansappvalues.dart';
import '../../sharedwidgets/sharedbuttom.dart';
import '../../widgets/home/header.dart';

class SelectChildScreen extends StatelessWidget {
  const SelectChildScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ChildrenDataControllerImp());

    return Scaffold(
      body: GetBuilder<ChildrenDataControllerImp>(
        builder: (controller) {
          return Column(
            children: [
              HomeHeader(
                name: "Autism Assessment",
                desc: "Select the child you want to assess",
              ),
              Expanded(
                child: controller.statueRequest == StatueRequest.loading
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : controller.childrendata.isEmpty
                        ? const EmptyChildrenWidget()
                        : Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: AppConstans.PaddingHorizontalAuth,
                              vertical: 20,
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  child: ListView.separated(
                                    itemCount: controller.childrendata.length,
                                    separatorBuilder: (_, __) =>
                                        const SizedBox(height: 12),
                                    itemBuilder: (context, index) {
                                      return ChildCard(
                                        index: index,
                                      );
                                    },
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Sharedbuttom(
                                  text: "Start Assessment",
                                  hight: 55,
                                  onpreesed: controller.selectedChildIndex ==
                                          null
                                      ? null
                                      : () {
                                          final child = controller.childrendata[
                                              controller.selectedChildIndex!];

                                          Get.toNamed(
                                            "/uploadVideoScreen",
                                            arguments: {
                                              "id": child["id"],
                                            },
                                          );
                                        },
                                ),
                              ],
                            ),
                          ),
              ),
            ],
          );
        },
      ),
    );
  }
}
