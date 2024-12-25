import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UnselectedIcon extends StatelessWidget {
  UnselectedIcon({required this.imageName});
  String imageName;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/SVG Images/$imageName.svg',
      colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
    );
  }
}
