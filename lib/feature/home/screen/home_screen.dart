import 'dart:io';
import 'package:exchange_test/feature/white/screen/white_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import '../../../app/resources/app_colors.dart';
import '../../../app/resources/app_styles.dart';
import '../../markets/screen/markets_screen.dart';
import '../domain/controller/home_controller.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

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
        backgroundColor: AppColors.primary,
        body: Stack(
          children: [
            // TabBarView For Switch Pages
            TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: controller.tabController,
                children: const <Widget>[
                  WhiteScreen(),
                  MarketsScreen(),
                  WhiteScreen(),
                  WhiteScreen(),
                  WhiteScreen(),
                  WhiteScreen(),
                ]),

            /// NavigationBar For Bottom Menu
            Align(alignment: Alignment.bottomCenter,
              child: Padding(padding: const EdgeInsets.only(bottom: 10),
                  child: Obx(()=> CustomNavigationBar(
                    isFloating: true,
                    borderRadius: const Radius.circular(0),
                    elevation: 0,
                    backgroundColor: AppColors.white,
                    strokeColor: AppColors.blue,
                    selectedColor: AppColors.blue,
                    unSelectedColor: AppColors.icon,
                    currentIndex: controller.activePage.value,
                    onTap: (final int int)=> controller.changeActivePage(int),
                    items: [
                      CustomNavigationBarItem(
                        icon: const Icon(EvaIcons.homeOutline, size: 30),
                        title: Padding(padding: const EdgeInsets.only(top: 10, left: 5),
                          child: Text(
                            'Home',
                            style: TextStyle(
                              fontFamily: AppStyles.iranSansMobileFontFamily,
                              fontWeight: AppStyles.textWeightNormal,
                              color: controller.tabColors[0],
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),// Home
                      CustomNavigationBarItem(
                        icon: const Icon(Icons.currency_bitcoin, size: 30),
                        title: Padding(padding: const EdgeInsets.only(top: 10, left: 5),
                          child: Text(
                            'Markets',
                            style: TextStyle(
                              fontFamily: AppStyles.iranSansMobileFontFamily,
                              fontWeight: AppStyles.textWeightNormal,
                              color: controller.tabColors[1],
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),// Markets
                      CustomNavigationBarItem(
                        icon: const Icon(Icons.account_tree, size: 30),
                        title: Padding(padding: const EdgeInsets.only(top: 10, left: 5),
                          child: Text(
                            'Spot',
                            style: TextStyle(
                              fontFamily: AppStyles.iranSansMobileFontFamily,
                              fontWeight: AppStyles.textWeightNormal,
                              color: controller.tabColors[2],
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),// Spot
                      CustomNavigationBarItem(
                        icon: const Icon(Icons.sticky_note_2_rounded, size: 30),
                        title: Padding(padding: const EdgeInsets.only(top: 10, left: 5),
                          child: Text(
                            'Futures',
                            style: TextStyle(
                              fontFamily: AppStyles.iranSansMobileFontFamily,
                              fontWeight: AppStyles.textWeightNormal,
                              color: controller.tabColors[3],
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),// Futures
                      CustomNavigationBarItem(
                        icon: const Icon(Icons.supervised_user_circle_sharp, size: 30),
                        title: Padding(padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            'Copy Trading',
                            style: TextStyle(
                              fontFamily: AppStyles.iranSansMobileFontFamily,
                              fontWeight: AppStyles.textWeightNormal,
                              color: controller.tabColors[4],
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ),// Copy Trading
                      CustomNavigationBarItem(
                        icon: const Icon(Icons.account_balance_wallet_rounded, size: 30),
                        title: Padding(padding: const EdgeInsets.only(top: 10, left: 5),
                          child: Text(
                            'Assets',
                            style: TextStyle(
                              fontFamily: AppStyles.iranSansMobileFontFamily,
                              fontWeight: AppStyles.textWeightNormal,
                              color: controller.tabColors[5],
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),// Assets
                    ],
                  ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}