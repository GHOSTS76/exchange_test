import 'package:flutter/material.dart';
import '../../../app/resources/app_colors.dart';
import '../../../app/resources/app_styles.dart';

class HeaderTabViewWidget extends StatefulWidget {
  const HeaderTabViewWidget({
    required this.widgetSelected,
    required this.selectedItems,
    final Key? key,
  }) : super(key: key);
  final List<int> selectedItems;
  final ValueChanged<int> widgetSelected;

  @override
  State<HeaderTabViewWidget> createState() =>
      _HeaderTabViewWidgetState();
}

class _HeaderTabViewWidgetState extends State<HeaderTabViewWidget> {
  @override
  void initState() {
    super.initState();
  }

  void onTapItem(final int index) {
    widget.widgetSelected(index);
    setState(() {});
  }

  @override
  Widget build(final BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildTextView('Perpetual Futures', 0),
          const SizedBox(width: 40),
          _buildTextView('USDT-M Std. Futures', 1),
          const SizedBox(width: 40),
          _buildTextView('Coin-M Std. Futures', 2),
        ],
      ),
    );
  }

  Widget _buildTextView(final String text, final int index) {
    final isSelected = widget.selectedItems.contains(index);
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: ()=> onTapItem(index),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: isSelected ?
          const Border(
            bottom: BorderSide(
                  width: 2,
                  color: AppColors.black,
              ),
          ) : null,
        ),
        child: Text(
          text,
          style: isSelected
              ? const TextStyle(
            color: AppColors.black,
            fontWeight: AppStyles.textWeightBold,
            fontFamily: AppStyles.iranSansMobileFontFamily,
            fontSize: 18,
          )
              : const TextStyle(
            color: AppColors.unSelected,
            fontWeight: AppStyles.textWeightBold,
            fontFamily: AppStyles.iranSansMobileFontFamily,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}