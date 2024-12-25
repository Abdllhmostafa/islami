import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/hadeth_tab/hadeth_tab.dart';
import 'package:islami/quraan_tab/quraan_tab.dart';
import 'package:islami/radio_tab/radio_tab.dart';
import 'package:islami/sebha_tab/sebha_tab.dart';
import 'package:islami/selected_icon.dart';
import 'package:islami/time_tab/time_tab.dart';
import 'package:islami/unselected_icon.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'homeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> tabs = [
    QuraanTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab(),
  ];
  List<String> images = [
    'quraan_background',
    'hadeth_background',
    'sebha_background',
    'quraan_background',
    'quraan_background',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/PNG Images/${images[currentIndex]}.png',
              ),
              fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            Image.asset(
              'assets/PNG Images/header.png',
              height: MediaQuery.sizeOf(context).height * 0.18,
            ),
            Expanded(
              child: tabs[currentIndex],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            currentIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: UnselectedIcon(imageName: 'Quraan'),
                activeIcon: SelectedIcon(imageName: 'Quraan'),
                label: 'Quran'),
            BottomNavigationBarItem(
                icon: UnselectedIcon(imageName: 'hadeth'),
                activeIcon: SelectedIcon(imageName: 'hadeth'),
                label: 'Hadeth'),
            BottomNavigationBarItem(
                icon: UnselectedIcon(imageName: 'sebha'),
                activeIcon: SelectedIcon(imageName: 'sebha'),
                label: 'Sebha'),
            BottomNavigationBarItem(
                icon: UnselectedIcon(imageName: 'radio'),
                activeIcon: SelectedIcon(imageName: 'radio'),
                label: 'Radio'),
            BottomNavigationBarItem(
                icon: UnselectedIcon(imageName: 'time'),
                activeIcon: SelectedIcon(imageName: 'time'),
                label: 'Time'),
          ]),
    );
  }
}
