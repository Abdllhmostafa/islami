import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/home_screen.dart';
import 'package:islami/onbording/page_controller.dart';
import 'package:islami/onbording/page_details.dart';
import 'package:islami/onbording/smooth_page_indecator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  static String id = 'OnBoardingScreen';

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/PNG Images/header.png'),
          Expanded(
            child: PageView(
              controller: PageControllerVariable
                  .pageController, // Link PageView to the controller
              onPageChanged: (index) {
                setState(() {
                  PageControllerVariable.currentPage = index;
                });
              },
              children: [
                PageDetails(
                    imageName: 'Frame 3',
                    title: 'Welcome To Islami App',
                    supTitle: ''),
                PageDetails(
                    imageName: 'kabba',
                    title: 'Welcome To Islami',
                    supTitle:
                        'We Are Very Excited To Have You In Our Community'),
                PageDetails(
                    imageName: 'welcome',
                    title: 'Reading the Quran',
                    supTitle: 'Read, and your Lord is the Most Generous'),
                PageDetails(
                    imageName: 'bearish',
                    title: 'Bearish',
                    supTitle: 'Praise the name of your Lord, the Most High'),
                PageDetails(
                    imageName: 'radio',
                    title: 'Welcome To Islami App',
                    supTitle:
                        'You can listen to the Holy Quran Radio through the application for free and easily'),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Conditionally render the "Back" button
                  if (PageControllerVariable.currentPage > 0)
                    InkWell(
                      onTap: () {
                        PageControllerVariable.pageController.previousPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Text(
                        'Back',
                        style: TextStyle(
                          color: AppTheme.primary,
                          fontSize: 16,
                        ),
                      ),
                    )
                  else
                    SizedBox.shrink(), // Empty widget to maintain spacing
                  CustomSmoothPageIndecator(),
                  InkWell(
                    onTap: PageControllerVariable.currentPage < 4
                        ? () {
                            PageControllerVariable.pageController.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                            );
                          }
                        : null, // Disable tap when on the last page
                    child: PageControllerVariable.currentPage < 4
                        ? Text(
                            'Next',
                            style: TextStyle(
                              color: AppTheme.primary,
                              fontSize: 16,
                            ),
                          )
                        : InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, HomeScreen.id);
                            },
                            child: Text(
                              'Finish',
                              style: TextStyle(
                                color: AppTheme.primary,
                                fontSize: 16,
                              ),
                            ),
                          ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
