import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/onbording/page_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothPageIndecator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: PageControllerVariable.pageController,
      count: 5,
      effect: ExpandingDotsEffect(
          dotHeight: 10, // Customize dot height
          dotWidth: 10, // Customize dot width
          dotColor: Color(0xff707070),
          activeDotColor: AppTheme.primary), // Your preferred effect
      onDotClicked: (index) {
        PageControllerVariable.pageController.animateToPage(
          index,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      },
    );
  }
}
