import 'package:get/get.dart';

void handleErrorResponse(
  Map response,
  String errortextemail,
  bool iserroredtextemail,
  String errortextphone,
  bool iserroredtextphone,
  String passwordError,
  bool ispasswordError,
) {
  if (response["errors"] != null) {
    Map errors = response["errors"];

    if (errors["email"] != null) {
      errortextemail = errors["email"].join(", ");
      iserroredtextemail = true;
    }

    if (errors["phone"] != null) {
      errortextphone = errors["phone"].join(", ");
      iserroredtextphone = true;
    }

    if (errors["password"] != null) {
      passwordError = errors["password"].join(", ");

      print("Password error: $passwordError");
    }
  } else {
    // Handle case if the error format is different or unknown
    Get.defaultDialog(
      title: "Warning",
      middleText: "An unknown error occurred.",
    );
  }
}
