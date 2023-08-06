import 'package:flutter/material.dart';
import '../../../app/resources/app_styles.dart';

class HeaderButtonWidget extends StatelessWidget {
  const HeaderButtonWidget({
    super.key,
    required this.leftSize,
    required this.onTap,
    required this.textColor,
    required this.text,
    required this.fontSize,
  });
  final double leftSize;
  final VoidCallback onTap;
  final Color textColor;
  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> onTap(),
      child: Padding(
        padding: EdgeInsets.only(left: leftSize),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontWeight: AppStyles.textWeightBold,
            fontFamily: AppStyles.iranSansMobileFontFamily,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
