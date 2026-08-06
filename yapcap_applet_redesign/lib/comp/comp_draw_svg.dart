import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CompDrawSvg extends StatelessWidget {
  const CompDrawSvg({
    super.key,
    required this.iconName,
    this.monochrome = false,
    this.color,
    this.size = 16,
  });

  final String iconName;
  final bool monochrome;
  final Color? color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/svgs/$iconName.svg",
      width: size,
      height: size,
      colorFilter: color != null
          ? ColorFilter.mode(color!, BlendMode.srcIn)
          : monochrome
          ? const ColorFilter.mode(Colors.white, BlendMode.srcIn)
          : null,
    );
  }
}
