import 'package:dispensa/controllers/authController.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/instance_manager.dart';

class ControllerBindings extends Bindings{
  @override
  void dependencies() {
    Get.put<AuthController>(AuthController());
  }

}