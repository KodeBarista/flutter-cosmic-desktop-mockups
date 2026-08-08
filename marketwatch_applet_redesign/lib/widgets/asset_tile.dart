import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';

class AssetTile extends StatelessWidget {
  const AssetTile({
    super.key,
    required this.iconName,
    required this.name,
    required this.id,
    required this.amount,
    required this.percent,
  });

  final String iconName;
  final String name;
  final String id;
  final String amount;
  final double percent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              SizedBox(
                width: 40,
                child: CompDrawSvg(iconName: iconName, size: 36),
              ),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name),
                  SizedBox(height: 2),
                  Text(
                    id,
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade300),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("\$ $amount"),
                  SizedBox(height: 2),
                  percent > 0
                      ? Text(
                          "+$percent%",
                          style: TextStyle(color: Colors.greenAccent),
                        )
                      : Text(
                          "-${percent.abs()}%",
                          style: TextStyle(color: Colors.redAccent),
                        ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
