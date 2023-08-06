import 'package:exchange_test/app/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LineWidget extends StatelessWidget {
  const LineWidget({
    super.key,
    required this.widthSize,
    required this.heightSize,
    required this.topSize,
    required this.bottomSize,
    required this.leftSize,
    required this.rightSize,
    required this.lineColor,
  });
  final double widthSize;
  final double heightSize;
  final double topSize;
  final double bottomSize;
  final double leftSize;
  final double rightSize;
  final Color lineColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthSize,
      height: heightSize,
      color: lineColor,
      margin: EdgeInsets.only(top: topSize, bottom: bottomSize, left: leftSize, right: rightSize),
    );
  }

}