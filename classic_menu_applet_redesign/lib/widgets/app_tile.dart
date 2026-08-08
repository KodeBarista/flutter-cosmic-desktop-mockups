import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import '../constants.dart';

class AppTile extends StatelessWidget {
  const AppTile({
    super.key,
    required this.iconName,
    required this.label,
    this.desc,
  });

  final String iconName;
  final String label;
  final String? desc;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: kBorderRadius,
      color: Colors.transparent,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          height: 64,
          width: double.infinity,
          child: Row(
            children: [
              SizedBox(
                width: 30,
                child: CompDrawSvg(iconName: iconName, size: 30),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(label, style: TextStyle(fontSize: 14)),
                    if (desc != null)
                      Text(
                        desc!,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 10,
                        ),
                        maxLines: 2,
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
