import 'package:autiva/view/sharedwidgets/sharedbuttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../controller/home/videoupload/uploadvodeo.dart';
import '../../../core/classes/statuerequest.dart';
import '../../../core/constans/constansappvalues.dart';
import '../../widgets/home/header.dart';
import '../../widgets/home/elvatedbuttom.dart';

class UploadVideoScreen extends StatelessWidget {
  const UploadVideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    UploadVideocon controller = Get.put(UploadVideocon());
    return Scaffold(
        backgroundColor: const Color(0xffF5F5F5),
        // floatingActionButton: const FloatingUploadButton(),
        body: GetBuilder<UploadVideocon>(
          builder: (controller) => SafeArea(
            child: controller.statueRequest == StatueRequest.loading
                ? Center(
                    child: Container(
                        width: AppConstans.IndicatorWidth,
                        height: AppConstans.IndicatorWidth,
                        child: Lottie.asset(Get.isDarkMode
                            ? AppConstans.loadinglottiedark
                            : AppConstans.loadinglottielight)))
                : Column(
                    children: [
                      const HomeHeader(
                        name: "Upload Video",
                        action: true,
                        actionText: "Back",
                        desc: "Select a video for behavior analysis",
                        // ciecleavater: false,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 30),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(18),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 10,
                                        color: Colors.black.withOpacity(.05),
                                        offset: const Offset(0, 5),
                                      )
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 25),
                                      Container(
                                        height: 70,
                                        width: 70,
                                        decoration: BoxDecoration(
                                          color: const Color(0xffCDEFF4),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            controller.pickVideo();
                                          },
                                          child: const Icon(
                                            Icons.upload,
                                            color: Color(0xff1E8DA3),
                                            size: 35,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      const Text(
                                        "Select Video",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      const Text(
                                        "Click to browse or\n drag and drop",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 13,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      const Text(
                                        "MP4, MOV, AVI up to 100MB",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      const SizedBox(height: 30),
                                      Sharedbuttom(
                                        onpreesed: () {
                                          controller.uploadVideo();
                                        },
                                        text: "Start Analysis",
                                        hight: 50,
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 25),
                                Container(
                                  // padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    // color: Colors.white,
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(
                                      color: const Color(0xffD7C9F2),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: const [
                                        Text(
                                          "Analysis Information",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                            "• Video will be analyzed for behavior patterns"),
                                        SizedBox(height: 5),
                                        Text(
                                            "• Processing typically takes 2-3 minutes"),
                                        SizedBox(height: 5),
                                        Text(
                                            "• Results include classification and confidence score"),
                                        SizedBox(height: 5),
                                        Text(
                                            "• All data is processed securely and privately"),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
          ),
        ));
  }
}
