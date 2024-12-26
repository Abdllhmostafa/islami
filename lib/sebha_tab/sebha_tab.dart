import 'package:flutter/material.dart';
import 'dart:math' as math;

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  Widget sebhaBody = Image.asset('assets/PNG Images/SebhaBody 1.png');
  int zekrCount = 0;
  String zekr = 'سبحان الله';
  double rotationAngle = 0; // Rotation angle in radians

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'سَبِّحِ اسْمَ رَبِّكَ الأعلى ',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                tasbee7();
              },
              child: Container(
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.sizeOf(context).width * 0.18),
                      child: Image.asset('assets/PNG Images/sebha_head.png'),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Transform.rotate(
                          angle: rotationAngle, // Apply rotation here
                          child: sebhaBody,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          zekr,
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          '$zekrCount',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void tasbee7() {
    setState(() {
      zekrCount++;
      rotationAngle += 90 * math.pi / 100; // Increment the rotation angle
      switch (zekrCount) {
        case 33:
          zekr = 'الحمد لله';
          break; // Add break to avoid falling through
        case 66:
          zekr = 'الله أكبر';
          break;
        case 99:
          zekrCount = 0;
          zekr = 'سبحان الله';
          break;
      }
    });
  }
}
