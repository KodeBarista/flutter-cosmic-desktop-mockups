import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CompDrawSvg extends StatelessWidget {
  const CompDrawSvg({
    super.key,
    required this.iconName,
    this.monochrome = false,
    this.color,
    this.size = 16,
    this.onTap,
  });

  final String iconName;
  final bool monochrome;
  final Color? color;
  final double size;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        "assets/svgs/$iconName.svg",
        width: size,
        height: size,
        colorFilter: color != null
            ? ColorFilter.mode(color!, BlendMode.srcIn)
            : monochrome
            ? const ColorFilter.mode(Colors.white, BlendMode.srcIn)
            : null,
      ),
    );
  }
}
