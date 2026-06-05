import 'package:autiva/controller/home/videoupload/resultcon.dart';
import 'package:autiva/view/sharedwidgets/sharedbuttom.dart';
import 'package:autiva/view/widgets/home/header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constans/constansappvalues.dart';
import '../../../core/model/apis/home/videoresult.dart';

class AnalysisResultScreen extends StatelessWidget {
  const AnalysisResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ResultPagecon controller = Get.put(ResultPagecon());

    // final VideoResult result = Get.arguments;
    // final assessment = result.assessment;

    return Scaffold(
      backgroundColor: const Color(0xffF4F6F8),
      // floatingActionButton: _buildFab(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HomeHeader(
                name: "Analysis Results",
                action: true,
                actionText: "Back",
                desc: "Detailed behavior classification",
                // ciecleavater: false,
              ),

              const SizedBox(height: 10),

              /// MAIN CARD
              Padding(
                padding: const EdgeInsets.all(12),
                child: _buildMainCard(controller.videoResult?.assessment),
              ),

              const SizedBox(height: 15),

              /// AI CARD
              Padding(
                padding: const EdgeInsets.all(12),
                child: _buildAiCard(),
              ),

              const SizedBox(height: 15),

              /// RECOMMENDATIONS
              Padding(
                padding: const EdgeInsets.all(12),
                child: _buildRecommendationsDynamic(
                    controller.videoResult?.assessment),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMainCard(Assessment? a) {
    if (a == null) {
      return const Center(child: Text("No Data Available"));
    }

    return Container(
      padding: const EdgeInsets.all(18),
      decoration: _cardStyle(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _iconBox(),
              const SizedBox(width: 10),
              const Text("Analysis Result",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 20),
          _dataBox("Prediction", a.stage1Prediction),
          const SizedBox(height: 10),
          _dataBox("Behavior", a.stage2Behavior),
          const SizedBox(height: 10),
          _dataBox("Severity", a.severity),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(child: _scoreBox("Repetitive", a.repetitiveScore)),
              const SizedBox(width: 10),
              Expanded(child: _scoreBox("Eye Contact", a.eyeContactScore)),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                  child: _scoreBox("Expressiveness", a.expressivenessScore)),
              const SizedBox(width: 10),
              Expanded(child: _scoreBox("Combined", a.combinedScore)),
            ],
          ),
          Sharedbuttom(
              text: "16".tr,
              hight: AppConstans.authbottomsize,
              isEnabled: true,
              onpreesed: () {
                // print(logcontroller.email.text);
                // print(logcontroller.Password.text);
                Get.offAllNamed("/homescreen");
                // print("login");
                // logcontroller.login();
              }),
        ],
      ),
    );
  }

  Widget _buildAiCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xffF3ECFF),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xff7B61FF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(Icons.smart_toy, color: Colors.white),
          ),
          const SizedBox(width: 10),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Questions about your results?",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text("Ask AI to explain these findings",
                    style: TextStyle(fontSize: 12, color: Colors.grey)),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward_ios, size: 14)
        ],
      ),
    );
  }

  Widget _buildRecommendationsDynamic(Assessment? a) {
    if (a == null || a.recommendations.isEmpty) {
      return const SizedBox();
    }

    final list = a.recommendations.split("\n");

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: _cardStyle(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Recommendations",
              style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          ...list.asMap().entries.map((e) {
            return RecommendationItem(
              "${e.key + 1}",
              e.value,
            );
          }),
        ],
      ),
    );
  }

  Widget _buildFab() {
    return FloatingActionButton(
      backgroundColor: const Color(0xff7B61FF),
      onPressed: () {},
      child: const Icon(Icons.auto_awesome),
    );
  }

  BoxDecoration _cardStyle() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
          blurRadius: 10,
          color: Colors.black.withOpacity(.05),
          offset: const Offset(0, 4),
        )
      ],
    );
  }

  Widget _iconBox() {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xffFFE6D5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Icon(Icons.analytics, color: Colors.orange),
    );
  }

  Widget _dataBox(String title, String value) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontSize: 12, color: Colors.grey)),
          const SizedBox(height: 5),
          Text(value,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _scoreBox(String title, int value) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xffF3ECFF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(title, style: const TextStyle(fontSize: 12)),
          const SizedBox(height: 8),
          Text("$value",
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class RecommendationItem extends StatelessWidget {
  final String number;
  final String text;

  const RecommendationItem(this.number, this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 12,
            backgroundColor: const Color(0xffE6F6F9),
            child: Text(number, style: const TextStyle(fontSize: 12)),
          ),
          const SizedBox(width: 10),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}
