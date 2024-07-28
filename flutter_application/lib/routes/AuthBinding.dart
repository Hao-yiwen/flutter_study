import 'package:flutter_application/pages/Get/CounterController.dart';
import 'package:get/instance_manager.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Countercontroller>(() => Countercontroller());
  }
}
