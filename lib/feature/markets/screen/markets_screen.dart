import 'dart:io';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../../app/resources/app_colors.dart';
import '../../../app/resources/app_styles.dart';
import '../domain/controller/markets_controller.dart';
import '../widgets/button_tab_view_widget.dart';
import '../widgets/coin_items_widget.dart';
import '../widgets/header_button_widget.dart';
import '../widgets/header_tab_view_widget.dart';
import '../widgets/line_widget.dart';

class MarketsScreen extends GetView<MarketsController> {
  const MarketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        if (Platform.isAndroid) {
          SystemNavigator.pop();
        } else if (Platform.isIOS) {
          exit(0);
        }
        return Future(() => true);
      },
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: Column(
            children: [
              // Header1
              Padding(padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Favorites
                      HeaderButtonWidget(
                        leftSize: 0,
                        onTap: ()=> '',
                        textColor: AppColors.unSelected,
                        text: 'Favorites',
                        fontSize: 25,
                      ),

                      // Spot
                      HeaderButtonWidget(
                        leftSize: 0,
                        onTap: ()=> '',
                        textColor: AppColors.unSelected,
                        text: 'Spot',
                        fontSize: 25,
                      ),

                      // Futures
                      HeaderButtonWidget(
                        leftSize: 0,
                        onTap: ()=> '',
                        textColor: AppColors.black,
                        text: 'Futures',
                        fontSize: 25,
                      ),

                      // Space
                      const SizedBox(),

                      // Search
                      GestureDetector(
                        onTap: ()=> '',
                        child: const Icon(EvaIcons.search, size: 30, color: AppColors.black),
                      ),
                    ]),
              ),

              /// Header2
              Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: HeaderTabViewWidget(
                    selectedItems: controller.headerSelectedItems,
                    widgetSelected: (final int index) {
                      controller.tabIndex.value = index;
                      controller.changeHeader(index);
                      FocusScope.of(context).unfocus();
                    },
                  ),
              ),

              /// Line
              LineWidget(
                widthSize: Get.width,
                heightSize: 0.1,
                topSize: 0,
                bottomSize: 0,
                leftSize: 15,
                rightSize: 15,
                lineColor: AppColors.unSelected,
              ),

              // Header3
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: ButtonTabViewWidget(
                  selectedItems: controller.buttonsSelectedItems,
                  widgetSelected: (final int index) {
                    controller.tabIndex.value = index;
                    controller.changeButtons(index);
                    FocusScope.of(context).unfocus();
                  },
                ),
              ),

              // Labels Row
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Labels Left
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              // Name
                              Text(
                                'Name',
                                style: TextStyle(
                                  fontFamily: AppStyles.iranSansMobileFontFamily,
                                  fontWeight: AppStyles.textWeightBold,
                                  color: AppColors.unSelected,
                                  fontSize: 14,
                                ),
                              ),

                              // Arrow Icon
                              Icon(Icons.arrow_drop_down, size: 20, color: AppColors.unSelected),

                              // Slash
                              Text(
                                ' / ',
                                style: TextStyle(
                                  fontFamily: AppStyles.iranSansMobileFontFamily,
                                  fontWeight: AppStyles.textWeightBold,
                                  color: AppColors.unSelected,
                                  fontSize: 14,
                                ),
                              ),

                              // Vol
                              Text(
                                'Vol',
                                style: TextStyle(
                                  fontFamily: AppStyles.iranSansMobileFontFamily,
                                  fontWeight: AppStyles.textWeightBold,
                                  color: AppColors.unSelected,
                                  fontSize: 14,
                                ),
                              ),

                              // Arrow Icon
                              Icon(Icons.arrow_drop_down, size: 20, color: AppColors.unSelected),
                            ]),
                      ),

                      // Space
                      const SizedBox(width: 50),

                      // Labels Right
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              // Last Price
                              Text(
                                'Last Price',
                                style: TextStyle(
                                  fontFamily: AppStyles.iranSansMobileFontFamily,
                                  fontWeight: AppStyles.textWeightBold,
                                  color: AppColors.unSelected,
                                  fontSize: 14,
                                ),
                              ),

                              // Arrow Icon
                              Icon(Icons.arrow_drop_down, size: 20, color: AppColors.unSelected),

                              // Change
                              Text(
                                'Change',
                                style: TextStyle(
                                  fontFamily: AppStyles.iranSansMobileFontFamily,
                                  fontWeight: AppStyles.textWeightBold,
                                  color: AppColors.unSelected,
                                  fontSize: 14,
                                ),
                              ),

                              // Arrow Icon
                              Icon(Icons.arrow_drop_down, size: 20, color: AppColors.unSelected),
                            ]),
                      ),
                    ]),
              ),

              /// Coin Items
              Obx(() {
                return controller.tabIndex.value == 0 ?
                CoinItemsWidget(function: ()=> '', itemCount: 20) :
                controller.tabIndex.value == 1 ?
                CoinItemsWidget(function: ()=> '', itemCount: 7) :
                controller.tabIndex.value == 2 ?
                CoinItemsWidget(function: ()=> '', itemCount: 1) : const Text('');
              }),
            ]),
      ),
    );
  }
}