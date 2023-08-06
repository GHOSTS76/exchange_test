import 'package:get/get.dart';
import '../../../feature/markets/domain/controller/markets_controller.dart';

class MarketsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MarketsController(), fenix: true);
  }
}