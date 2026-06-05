import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constans/constansappvalues.dart';

class AssessmentCard extends StatelessWidget {
  final Map assessment;

  const AssessmentCard({
    super.key,
    required this.assessment,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Get.isDarkMode ? AppConstans.secondblackcolor : Colors.white,
        borderRadius: BorderRadius.circular(AppConstans.Radious),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          const SizedBox(height: 12),
          _buildAssessmentInfo(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color(0xff1C8EA3).withOpacity(0.1),
          ),
          child: const Icon(
            Icons.child_care,
            color: Color(0xff1C8EA3),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                assessment['childName'] ?? '',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                "Severity: ${assessment['severity']}",
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAssessmentInfo() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildInfoItem(
            "Prediction",
            assessment['stage1Prediction'],
          ),
          _buildInfoItem(
            "Behavior",
            assessment['stage2Behavior'],
          ),
          _buildInfoItem(
            "Combined Score",
            assessment['combinedScore'],
          ),
          _buildInfoItem(
            "Eye Contact Score",
            assessment['eyeContactScore'],
          ),
          _buildInfoItem(
            "Expressiveness Score",
            assessment['expressivenessScore'],
          ),
          _buildInfoItem(
            "Repetitive Score",
            assessment['repetitiveScore'],
          ),
          _buildInfoItem(
            "Assessment Date",
            assessment['assessedAt'].toString().split('T').first,
          ),
        ],
      ),
    );
  }

  Widget _buildInfoItem(
    String title,
    dynamic value,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        "$title: $value",
      ),
    );
  }
}
