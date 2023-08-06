import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'app/binding/main/main_binding.dart';
import 'app/resources/app_colors.dart';
import 'app/resources/app_pages.dart';
import 'app/resources/app_routes.dart';
import 'app/resources/app_styles.dart';

Future<void> main() async {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
//
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Exchange Test',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        fontFamily: AppStyles.iranSansMobileFontFamily,
        primaryIconTheme: const IconThemeData(color: AppColors.black),
        primaryTextTheme: const TextTheme(titleMedium: TextStyle(color: AppColors.white)),
      ),
      initialRoute: Routes.home,
      getPages: Pages.pages,
      initialBinding: MainBinding(),
      debugShowCheckedModeBanner: false,
    );
  }
}