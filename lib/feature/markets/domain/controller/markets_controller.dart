import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MarketsController extends GetxController with GetSingleTickerProviderStateMixin{
  late TabController tabController;
  RxInt activePage = 1.obs;
  RxInt tabIndex = 0.obs;
  final List<int> headerSelectedItems = [0].obs;
  late List<int> buttonsSelectedItems = [0].obs;

  @override
  void onInit() {
    tabController = TabController(length: 3, vsync: this);
    tabController.index = activePage.value;
    super.onInit();
  }

  void changeHeader(final int index) {
    headerSelectedItems.clear();
    headerSelectedItems.add(index);
  }

  void changeButtons(final int index) {
    buttonsSelectedItems.clear();
    buttonsSelectedItems.add(index);
  }

  changeActivePage(selectedPage) {
    tabController.index = selectedPage;
    activePage.value = selectedPage;
  }
}