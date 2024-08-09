import 'package:get/get.dart';

import '../controllers/add_cart_controller.dart';

class AddCartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddCartController>(
      () => AddCartController(),
    );
  }
}
