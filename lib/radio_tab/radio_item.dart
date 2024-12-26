import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';

/// Method to build a selectable container
class RadioItem extends StatelessWidget {
  final int index;
  final int selectedIndex;
  final String text;
  final ValueChanged<int> onTap;

  RadioItem({
    required this.index,
    required this.selectedIndex,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => onTap(index),
        child: Container(
          decoration: BoxDecoration(
            color: selectedIndex == index
                ? AppTheme.primary
                : AppTheme.black.withOpacity(0.7),
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.all(8),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: selectedIndex == index ? AppTheme.black : AppTheme.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
