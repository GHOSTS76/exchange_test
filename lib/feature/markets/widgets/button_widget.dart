import 'package:flutter/material.dart';
import '../../../app/resources/app_colors.dart';
import '../../../app/resources/app_styles.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.width,
    required this.onTap,
    required this.title,
    required this.color,
    required this.textColor,
  }) : super(key: key);
  final double width;
  final Function onTap;
  final String title;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: ()=> onTap(),
      child: Container(
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: textColor,
              fontWeight: AppStyles.textWeightBold,
              fontFamily: AppStyles.iranSansMobileFontFamily,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
