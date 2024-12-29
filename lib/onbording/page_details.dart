import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';

class PageDetails extends StatelessWidget {
  PageDetails(
      {required this.imageName, required this.title, required this.supTitle});
  String imageName;
  String title;
  String supTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/PNG Images/$imageName.png',
            height: MediaQuery.sizeOf(context).height * 0.4,
            width: MediaQuery.sizeOf(context).height * 0.7,
          ),
          Text(
            title,
            style: TextStyle(color: AppTheme.primary, fontSize: 24),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.04,
          ),
          Text(
            supTitle,
            style: TextStyle(color: AppTheme.primary, fontSize: 14),
          )
        ],
      ),
    );
  }
}
