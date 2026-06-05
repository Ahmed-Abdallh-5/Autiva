import 'dart:io';
import 'package:autiva/core/funtions/handlingdata.dart';
import 'package:autiva/core/model/apis/home/uploadvideo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../core/classes/statuerequest.dart';
import '../../../core/model/apis/home/videoresult.dart';
import '../../../view/screens/home/resultpage.dart';

abstract class UploadVideo extends GetxController {
  Future pickVideo();
  Future uploadVideo();
}

class UploadVideocon extends UploadVideo {
  Uploadvideoapi uploadvideoapi = Uploadvideoapi(Get.find());
  VideoResult? videoResult;
  StatueRequest? statueRequest;
  final ImagePicker picker = ImagePicker();
  String? id;
  File? selectedVideo;

  onInit() {
    super.onInit();
    id = Get.arguments['id'].toString();
    print("Received ID: $id");
  }

  @override
  Future pickVideo() async {
    try {
      var cameraStatus = await Permission.camera.request();
      var storageStatus = await Permission.storage.request();

      if (!cameraStatus.isGranted || !storageStatus.isGranted) {
        Get.snackbar("Error", "Permission denied");
        return;
      }

      Get.bottomSheet(
        Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Wrap(
            children: [
              ListTile(
                leading: const Icon(Icons.camera),
                title: const Text("Camera"),
                onTap: () async {
                  Get.back();
                  await _pickFromSource(ImageSource.camera);
                },
              ),
              ListTile(
                leading: const Icon(Icons.video_library),
                title: const Text("Gallery"),
                onTap: () async {
                  Get.back();
                  await _pickFromSource(ImageSource.gallery);
                },
              ),
            ],
          ),
        ),
      );
    } catch (e) {
      print(e);
    }
  }

  Future _pickFromSource(ImageSource source) async {
    final XFile? picked = await picker.pickVideo(source: source);

    if (picked == null) return;

    selectedVideo = File(picked.path);

    Get.snackbar("Done", "Video selected successfully ✅");
  }

  @override
  Future uploadVideo() async {
    if (selectedVideo == null) {
      Get.snackbar("Error", "Please select a video first");
      return;
    }

    statueRequest = StatueRequest.loading;
    update();

    var response = await uploadvideoapi.uploadvideo(selectedVideo!, id!);

    // statueRequest = handlingdata(response);
    statueRequest = handlingdata(response);
    update();
    if (response is Map) {
      final data = Map<String, dynamic>.from(response);

      Get.snackbar("Success", data['message']);

      videoResult = VideoResult.fromJson(data);

      print(videoResult?.assessment?.childName);
      Get.to(() => const AnalysisResultScreen(),
          arguments: {'result': videoResult});
    } else {
      Get.snackbar("Error", "Upload failed");
    }
  }
}
