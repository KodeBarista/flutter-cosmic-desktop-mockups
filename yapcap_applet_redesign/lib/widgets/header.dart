import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/svgs/${title.toLowerCase()}.svg",
          width: 30,
          height: 30,
        ),
        SizedBox(width: 12),
        Text(
          title,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
