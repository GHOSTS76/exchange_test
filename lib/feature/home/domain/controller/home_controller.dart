import 'package:exchange_test/app/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with GetSingleTickerProviderStateMixin{
  late TabController tabController;
  RxInt activePage = 1.obs;
  RxList<dynamic> tabColors = [
    AppColors.unSelected,
    AppColors.blue,
    AppColors.unSelected,
    AppColors.unSelected,
    AppColors.unSelected,
    AppColors.unSelected,
  ].obs;

  @override
  void onInit() {
    tabController = TabController(length: 6, vsync: this);
    tabController.index = activePage.value;
    super.onInit();
  }

  changeActivePage(selectedPage) {
    tabController.index = selectedPage;
    activePage.value = selectedPage;
    switch(selectedPage) {
      case 0:
        tabColors[0] = AppColors.blue;
        tabColors[1] = AppColors.unSelected;
        tabColors[2] = AppColors.unSelected;
        tabColors[3] = AppColors.unSelected;
        tabColors[4] = AppColors.unSelected;
        tabColors[5] = AppColors.unSelected;
        break;
      case 1:
        tabColors[0] = AppColors.unSelected;
        tabColors[1] = AppColors.blue;
        tabColors[2] = AppColors.unSelected;
        tabColors[3] = AppColors.unSelected;
        tabColors[4] = AppColors.unSelected;
        tabColors[5] = AppColors.unSelected;
        break;
      case 2:
        tabColors[0] = AppColors.unSelected;
        tabColors[1] = AppColors.unSelected;
        tabColors[2] = AppColors.blue;
        tabColors[3] = AppColors.unSelected;
        tabColors[4] = AppColors.unSelected;
        tabColors[5] = AppColors.unSelected;
        break;
      case 3 :
        tabColors[0] = AppColors.unSelected;
        tabColors[1] = AppColors.unSelected;
        tabColors[2] = AppColors.unSelected;
        tabColors[3] = AppColors.blue;
        tabColors[4] = AppColors.unSelected;
        tabColors[5] = AppColors.unSelected;
        break;
      case 4 :
        tabColors[0] = AppColors.unSelected;
        tabColors[1] = AppColors.unSelected;
        tabColors[2] = AppColors.unSelected;
        tabColors[3] = AppColors.unSelected;
        tabColors[4] = AppColors.blue;
        tabColors[5] = AppColors.unSelected;
        break;
      case 5:
        tabColors[0] = AppColors.unSelected;
        tabColors[1] = AppColors.unSelected;
        tabColors[2] = AppColors.unSelected;
        tabColors[3] = AppColors.unSelected;
        tabColors[4] = AppColors.unSelected;
        tabColors[5] = AppColors.blue;
        break;
    }
  }
}