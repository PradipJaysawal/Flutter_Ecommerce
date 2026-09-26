import 'package:fecommerce/contoller/auth_controller.dart';
import 'package:fecommerce/contoller/product_controller.dart';
import 'package:fecommerce/contoller/storage_controller.dart';
import 'package:get/get.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<AuthController>(AuthController(), permanent: true);
    Get.put<StorageController>(StorageController());
    Get.put<ProductController>(ProductController(), permanent: true);
  }
}
