import 'package:get/get.dart';

valditor(String value, int min, int max, String type,
    {dynamic handelederror, dynamic passval1, dynamic passval2}) {
  if (type == "username") {
    if (value.isEmpty) {
      return "126".tr;
    }
    if (value.contains(" ")) {
      return "373".tr;
    }
    if (!GetUtils.isUsername(value) || value is int || value is double) {
      return "127".tr;
    }
    if (min <= 2) {
      return "128".tr;
    }
    if (max >= 20) {
      return "129".tr;
    }
  }

  if (type == "Email") {
    if (value.isEmpty) {
      return "126".tr;
    }
    if (value.contains(" ")) {
      return "372".tr;
    }
    if (!GetUtils.isEmail(value)) {
      return "130".tr;
    }
    // Check if the email contains any capital letters
    if (value.contains(RegExp(r'[A-Z]'))) {
      return "305".tr;
    }
    if (min <= 10) {
      return "140".tr;
    }
    if (max >= 80) {
      return "141".tr;
    }
  }

  if (type == "phone") {
    if (value.isEmpty) {
      return "126".tr;
    }

    if (!GetUtils.isPhoneNumber(value)) {
      return "300".tr;
    }
    if (min <= 5) {
      return "301".tr;
    }
    if (max >= 15) {
      return "302".tr;
    }
  }

  if (type == "password") {
    if (value.isEmpty) {
      return "126".tr;
    }

    if (min <= 7) {
      return "303".tr;
    }
    if (passval1 != passval2) {
      return "304".tr;
    }
  }

  if (type == "password delation") {
    if (value.isEmpty) {
      return "126".tr;
    }
  }

  if (type == "date") {
    if (value.isEmpty) {
      return "126".tr;
    }
  }

  if (type == "autism") {
    if (value.isEmpty) {
      return "126".tr;
    }
  }
}
