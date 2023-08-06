import 'package:exchange_test/feature/home/screen/home_screen.dart';
import 'package:exchange_test/feature/white/screen/white_screen.dart';
import 'package:get/get.dart';
import 'app_routes.dart';
import '../../feature/markets/screen/markets_screen.dart';

abstract class Pages {
  static final pages = [
    GetPage(
      name: Routes.home,
      page: HomeScreen.new,
    ),
    GetPage(
      name: Routes.markets,
      page: MarketsScreen.new,
    ),
    GetPage(
      name: Routes.white,
      page: WhiteScreen.new,
    ),
  ];
}
