import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/hadeth_tab/hadeth_tab.dart';
import 'package:islami/quraan_tab/quraan_tab.dart';
import 'package:islami/radio_tab/radio_tab.dart';
import 'package:islami/sebha_tab/sebha_tab.dart';
import 'package:islami/time_tab/time_tab.dart';

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
    'quraan_background',
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
                icon: SvgPicture.asset(
                  'assets/SVG Images/Quraan.svg',
                  colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
                ),
                activeIcon: SvgPicture.asset(
                  'assets/SVG Images/Quraan.svg',
                  colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
                label: 'Quran'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/SVG Images/radio.svg'),
                activeIcon: SvgPicture.asset(
                  'assets/SVG Images/radio.svg',
                  colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
                label: 'Hadeth'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/SVG Images/sebha.svg'),
                activeIcon: SvgPicture.asset(
                  'assets/SVG Images/sebha.svg',
                  colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
                label: 'Sebha'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/SVG Images/radio.svg'),
                activeIcon: SvgPicture.asset(
                  'assets/SVG Images/radio.svg',
                  colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
                label: 'Radio'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/SVG Images/time.svg'),
                activeIcon: SvgPicture.asset(
                  'assets/SVG Images/time.svg',
                  colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
                label: 'Time'),
          ]),
    );
  }
}
