import 'package:exchange_test/app/resources/app_routes.dart';
import 'package:get/get.dart';

class Navigate {

  // void toHome() {
  //   offOneNavigate(root: '${Routes.splash}${Routes.home}');
  // }

  void toMarkets() {
    offOneNavigate(root: Routes.markets);
  }

  void navigate({required final String root, final Map<String, dynamic>? arguments}) {
    Get.toNamed(root, arguments: arguments);
  }

  void offOneNavigate({required final String root, final Map<String, dynamic>? arguments,}) {
    Get.offNamed(root, arguments: arguments);
  }

  void offNavigate({required final String root, final Map<String, dynamic>? arguments,}) {
    Get.offAllNamed(root, arguments: arguments);
  }

  void offAllNavigate({required final String root, final Map<String, dynamic>? arguments,}) {
    Get.offAllNamed(root, arguments: arguments,);
  }
}
