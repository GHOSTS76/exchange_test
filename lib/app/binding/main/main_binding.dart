import 'package:exchange_test/app/binding/home/home_binding.dart';
import 'package:exchange_test/app/binding/markets/markets_binding.dart';
import 'package:get/get.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    HomeBinding().dependencies();
    MarketsBinding().dependencies();
  }
}