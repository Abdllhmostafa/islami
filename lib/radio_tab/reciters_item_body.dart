import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/app_theme.dart';

class RecitersItemBody extends StatelessWidget {
  RecitersItemBody({required this.reciters});
  String reciters;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.15,
      decoration: BoxDecoration(
        // image: DecorationImage(
        //   image: AssetImage(
        //     'assets/PNG Images/Mosque-02.png',
        //   ),
        //   alignment: Alignment.bottomCenter,
        // ),
        color: AppTheme.primary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset('assets/PNG Images/Mosque-02.png'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  reciters,
                  style: TextStyle(fontSize: 16),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/SVG Images/Polygon 2.svg'),
                    SizedBox(
                      width: 20,
                    ),
                    SvgPicture.asset('assets/SVG Images/Volume High.svg'),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
