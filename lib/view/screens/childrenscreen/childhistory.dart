import 'package:autiva/view/screens/childrenscreen/addchildscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/children/ChildrenDataControllerImp.dart';
import '../../../controller/children/childrendata.dart';
import '../../../core/classes/statuerequest.dart';
import '../../../core/constans/constansappvalues.dart';
import '../../widgets/children/add_child_button.dart';
import '../../widgets/children/assessment_card.dart';
import '../../widgets/home/header.dart';

class MyChildrenScreen extends StatelessWidget {
  const MyChildrenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChildrenDataControllerhistoryImp>(
      init: ChildrenDataControllerhistoryImp(),
      builder: (controller) {
        return Scaffold(
          body: Column(
            children: [
              const HomeHeader(
                name: "My Children Assessments",
                desc: "View your children's assessments",
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppConstans.PaddingHorizontalAuth,
                  ),
                  child: _buildBody(
                    controller,
                    context,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildBody(
    ChildrenDataControllerhistoryImp controller,
    BuildContext context,
  ) {
    if (controller.statueRequest == StatueRequest.loading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (controller.assessments.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.assignment_outlined,
              size: 80,
              color: Colors.grey.shade400,
            ),
            const SizedBox(height: 16),
            const Text(
              "No assessments found",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "You haven't completed any assessments yet.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      itemCount: controller.assessments.length,
      itemBuilder: (context, index) {
        return AssessmentCard(
          assessment: controller.assessments[index],
        );
      },
    );
  }
}
