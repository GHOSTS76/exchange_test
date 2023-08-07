import 'package:exchange_test/app/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../app/resources/app_styles.dart';

class CoinItemsWidget extends StatelessWidget {
  const CoinItemsWidget({
    required this.function,
    required this.itemCount,
    Key? key,
  }) : super(key: key);
  final Function function;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height/1.6,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      color: AppColors.white,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: itemCount,
          itemBuilder: (BuildContext context,int index) {
            return GestureDetector(
              onTap: ()=> function(),
              child: Column(
                children: [
                  // Coin Data
                  Container(
                    width: Get.width,
                    margin: const EdgeInsets.only(bottom: 30),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /// Coin Title
                          Column(
                              children: [
                                // BTC/USDT
                                const Text(
                                  'BTC/USDT',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontWeight: AppStyles.textWeightBold,
                                    fontFamily: AppStyles.iranSansMobileFontFamily,
                                    fontSize: 25,
                                  ),
                                ),

                                // Vol. 355.63M
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: const [
                                    Text(
                                      'Vol. 355.63M',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: AppColors.unSelected,
                                        fontWeight: AppStyles.textWeightBold,
                                        fontFamily: AppStyles.iranSansMobileFontFamily,
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(width: 30),
                                  ]),
                              ]),

                          /// Space
                          const SizedBox(),
                          const SizedBox(),
                          const SizedBox(),

                          /// Coin Price
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                // 28,838.06
                                Text(
                                  '28,838.06',
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontWeight: AppStyles.textWeightBold,
                                    fontFamily: AppStyles.iranSansMobileFontFamily,
                                    fontSize: 25,
                                  ),
                                ),

                                // 105,890.55
                                Text(
                                  '105,890.55',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: AppColors.unSelected,
                                    fontWeight: AppStyles.textWeightBold,
                                    fontFamily: AppStyles.iranSansMobileFontFamily,
                                    fontSize: 14,
                                  ),
                                ),
                              ]),

                          /// Change Percent
                          Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.red,
                              boxShadow: const [
                                BoxShadow(
                                  color: AppColors.unSelected,
                                  offset: Offset(0.0, 1.0),
                                  blurRadius: 3,
                                ),
                              ],
                            ),
                            child: const Center(
                              child: Text(
                                '-1.58%',
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontWeight: AppStyles.textWeightBold,
                                  fontFamily: AppStyles.iranSansMobileFontFamily,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),

                  /// Coin Data
                  Container(
                    width: Get.width,
                    margin: const EdgeInsets.only(bottom: 30),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /// Coin Title
                          Column(
                              children: [
                                // ETH/USDT
                                const Text(
                                  'ETH/USDT',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontWeight: AppStyles.textWeightBold,
                                    fontFamily: AppStyles.iranSansMobileFontFamily,
                                    fontSize: 25,
                                  ),
                                ),

                                // Vol. 355.63M
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Text(
                                        'Vol. 355.63M',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: AppColors.unSelected,
                                          fontWeight: AppStyles.textWeightBold,
                                          fontFamily: AppStyles.iranSansMobileFontFamily,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(width: 30),
                                    ]),
                              ]),

                          /// Space
                          const SizedBox(),
                          const SizedBox(),
                          const SizedBox(),

                          /// Coin Price
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                /// 1,834.25
                                Text(
                                  '1,834.25',
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontWeight: AppStyles.textWeightBold,
                                    fontFamily: AppStyles.iranSansMobileFontFamily,
                                    fontSize: 25,
                                  ),
                                ),

                                // 105,890.55
                                Text(
                                  '105,890.55',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: AppColors.unSelected,
                                    fontWeight: AppStyles.textWeightBold,
                                    fontFamily: AppStyles.iranSansMobileFontFamily,
                                    fontSize: 14,
                                  ),
                                ),
                              ]),

                          /// Change Percent
                          Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.red,
                              boxShadow: const [
                                BoxShadow(
                                  color: AppColors.unSelected,
                                  offset: Offset(0.0, 1.0),
                                  blurRadius: 3,
                                ),
                              ],
                            ),
                            child: const Center(
                              child: Text(
                                '-1.58%',
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontWeight: AppStyles.textWeightBold,
                                  fontFamily: AppStyles.iranSansMobileFontFamily,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),

                  /// Coin Data
                  Container(
                    width: Get.width,
                    margin: const EdgeInsets.only(bottom: 30),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /// Coin Title
                          Column(
                              children: [
                                // BNB/USDT
                                const Text(
                                  'BNB/USDT',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontWeight: AppStyles.textWeightBold,
                                    fontFamily: AppStyles.iranSansMobileFontFamily,
                                    fontSize: 25,
                                  ),
                                ),

                                // Vol. 355.63M
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Text(
                                        'Vol. 355.63M',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: AppColors.unSelected,
                                          fontWeight: AppStyles.textWeightBold,
                                          fontFamily: AppStyles.iranSansMobileFontFamily,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(width: 30),
                                    ]),
                              ]),

                          /// Space
                          const SizedBox(),
                          const SizedBox(),
                          const SizedBox(),

                          /// Coin Price
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                /// 244.61
                                Text(
                                  '244.61',
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontWeight: AppStyles.textWeightBold,
                                    fontFamily: AppStyles.iranSansMobileFontFamily,
                                    fontSize: 25,
                                  ),
                                ),

                                // 105,890.55
                                Text(
                                  '105,890.55',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: AppColors.unSelected,
                                    fontWeight: AppStyles.textWeightBold,
                                    fontFamily: AppStyles.iranSansMobileFontFamily,
                                    fontSize: 14,
                                  ),
                                ),
                              ]),

                          /// Change Percent
                          Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.green,
                              boxShadow: const [
                                BoxShadow(
                                  color: AppColors.unSelected,
                                  offset: Offset(0.0, 1.0),
                                  blurRadius: 3,
                                ),
                              ],
                            ),
                            child: const Center(
                              child: Text(
                                '+0.65%',
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontWeight: AppStyles.textWeightBold,
                                  fontFamily: AppStyles.iranSansMobileFontFamily,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),

                  /// Coin Data
                  Container(
                    width: Get.width,
                    margin: const EdgeInsets.only(bottom: 30),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /// Coin Title
                          Column(
                              children: [
                                // CRV/USDT
                                const Text(
                                  'CRV/USDT',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontWeight: AppStyles.textWeightBold,
                                    fontFamily: AppStyles.iranSansMobileFontFamily,
                                    fontSize: 25,
                                  ),
                                ),

                                // Vol. 355.63M
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Text(
                                        'Vol. 355.63M',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: AppColors.unSelected,
                                          fontWeight: AppStyles.textWeightBold,
                                          fontFamily: AppStyles.iranSansMobileFontFamily,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(width: 30),
                                    ]),
                              ]),

                          /// Space
                          const SizedBox(),
                          const SizedBox(),
                          const SizedBox(),

                          /// Coin Price
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                /// 0.608
                                Text(
                                  '0.608',
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontWeight: AppStyles.textWeightBold,
                                    fontFamily: AppStyles.iranSansMobileFontFamily,
                                    fontSize: 25,
                                  ),
                                ),

                                // 105,890.55
                                Text(
                                  '105,890.55',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: AppColors.unSelected,
                                    fontWeight: AppStyles.textWeightBold,
                                    fontFamily: AppStyles.iranSansMobileFontFamily,
                                    fontSize: 14,
                                  ),
                                ),
                              ]),

                          /// Change Percent
                          Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.red,
                              boxShadow: const [
                                BoxShadow(
                                  color: AppColors.unSelected,
                                  offset: Offset(0.0, 1.0),
                                  blurRadius: 3,
                                ),
                              ],
                            ),
                            child: const Center(
                              child: Text(
                                '-3.03%',
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontWeight: AppStyles.textWeightBold,
                                  fontFamily: AppStyles.iranSansMobileFontFamily,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),

                  // Coin Data
                  Container(
                    width: Get.width,
                    margin: const EdgeInsets.only(bottom: 30),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /// Coin Title
                          Column(
                              children: [
                                // XRP/USDT
                                const Text(
                                  'XRP/USDT',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontWeight: AppStyles.textWeightBold,
                                    fontFamily: AppStyles.iranSansMobileFontFamily,
                                    fontSize: 25,
                                  ),
                                ),

                                // Vol. 355.63M
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Text(
                                        'Vol. 355.63M',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: AppColors.unSelected,
                                          fontWeight: AppStyles.textWeightBold,
                                          fontFamily: AppStyles.iranSansMobileFontFamily,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(width: 30),
                                    ]),
                              ]),

                          /// Space
                          const SizedBox(),
                          const SizedBox(),
                          const SizedBox(),

                          /// Coin Price
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                // 0.6924
                                Text(
                                  '0.6924',
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontWeight: AppStyles.textWeightBold,
                                    fontFamily: AppStyles.iranSansMobileFontFamily,
                                    fontSize: 25,
                                  ),
                                ),

                                // 105,890.55
                                Text(
                                  '105,890.55',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: AppColors.unSelected,
                                    fontWeight: AppStyles.textWeightBold,
                                    fontFamily: AppStyles.iranSansMobileFontFamily,
                                    fontSize: 14,
                                  ),
                                ),
                              ]),

                          /// Change Percent
                          Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.red,
                              boxShadow: const [
                                BoxShadow(
                                  color: AppColors.unSelected,
                                  offset: Offset(0.0, 1.0),
                                  blurRadius: 3,
                                ),
                              ],
                            ),
                            child: const Center(
                              child: Text(
                                '-0.98%',
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontWeight: AppStyles.textWeightBold,
                                  fontFamily: AppStyles.iranSansMobileFontFamily,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),

                  // Coin Data
                  Container(
                    width: Get.width,
                    margin: const EdgeInsets.only(bottom: 30),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /// Coin Title
                          Column(
                              children: [
                                // SOL/USDT
                                const Text(
                                  'SOL/USDT',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontWeight: AppStyles.textWeightBold,
                                    fontFamily: AppStyles.iranSansMobileFontFamily,
                                    fontSize: 25,
                                  ),
                                ),

                                // Vol. 355.63M
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Text(
                                        'Vol. 355.63M',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: AppColors.unSelected,
                                          fontWeight: AppStyles.textWeightBold,
                                          fontFamily: AppStyles.iranSansMobileFontFamily,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(width: 30),
                                    ]),
                              ]),

                          /// Space
                          const SizedBox(),
                          const SizedBox(),
                          const SizedBox(),

                          /// Coin Price
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                // 23.198
                                Text(
                                  '23.198',
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontWeight: AppStyles.textWeightBold,
                                    fontFamily: AppStyles.iranSansMobileFontFamily,
                                    fontSize: 25,
                                  ),
                                ),

                                // 105,890.55
                                Text(
                                  '105,890.55',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: AppColors.unSelected,
                                    fontWeight: AppStyles.textWeightBold,
                                    fontFamily: AppStyles.iranSansMobileFontFamily,
                                    fontSize: 14,
                                  ),
                                ),
                              ]),

                          /// Change Percent
                          Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.red,
                              boxShadow: const [
                                BoxShadow(
                                  color: AppColors.unSelected,
                                  offset: Offset(0.0, 1.0),
                                  blurRadius: 3,
                                ),
                              ],
                            ),
                            child: const Center(
                              child: Text(
                                '-4.75%',
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontWeight: AppStyles.textWeightBold,
                                  fontFamily: AppStyles.iranSansMobileFontFamily,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),
                ]),
            );
          }
      ),
    );
  }
}
