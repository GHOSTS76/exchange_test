import 'package:flutter/material.dart';
import '../../../app/resources/app_colors.dart';
import 'button_widget.dart';

class ButtonTabViewWidget extends StatefulWidget {
  const ButtonTabViewWidget({
    required this.widgetSelected,
    required this.selectedItems,
    final Key? key,
  }) : super(key: key);
  final List<int> selectedItems;
  final ValueChanged<int> widgetSelected;

  @override
  State<ButtonTabViewWidget> createState() =>
      _ButtonTabViewWidgetState();
}

class _ButtonTabViewWidgetState extends State<ButtonTabViewWidget> {
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
      height: 30,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildButtonView('All', 0),
          const SizedBox(width: 15),
          _buildButtonView('Top', 1),
          const SizedBox(width: 15),
          _buildButtonView('Stocks', 2),
          const SizedBox(width: 15),
          _buildButtonView('Forex', 3),
          const SizedBox(width: 15),
          _buildButtonView('Indices', 4),
        ],
      ),
    );
  }

  Widget _buildButtonView(final String text, final int index) {
    final isSelected = widget.selectedItems.contains(index);
    return ButtonWidget(
      width: 80,
      onTap: ()=> onTapItem(index),
      title: text,
      color: isSelected ? AppColors.blueSky : AppColors.silver,
      textColor: isSelected ? AppColors.blue : AppColors.black,
    );
  }
}