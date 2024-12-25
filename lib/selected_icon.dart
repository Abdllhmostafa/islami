import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SelectedIcon extends StatelessWidget {
  SelectedIcon({required this.imageName});
  String imageName;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/SVG Images/$imageName.svg',
      colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
    );
  }
}
