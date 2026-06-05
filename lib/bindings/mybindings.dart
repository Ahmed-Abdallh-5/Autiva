import 'package:get/get.dart';

import '../core/classes/crud.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(CRUD());
  }
}
