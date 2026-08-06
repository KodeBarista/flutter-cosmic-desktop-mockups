import 'package:flutter/material.dart';

import '../constants.dart';

class UsageCard extends StatelessWidget {
  const UsageCard({
    super.key,
    required this.title,
    required this.leadingSubtitle,
    required this.trailingSubtitle,
    required this.value,
    required this.cap,
  });

  final String title;
  final String leadingSubtitle;
  final String trailingSubtitle;
  final double value;
  final double cap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontSize: 16)),
          SizedBox(height: 8.0),
          Stack(
            children: [
              LinearProgressIndicator(
                value: value / 100,
                color: kAccentColor,
                backgroundColor: Colors.grey.shade300.withAlpha(100),
              ),
              Positioned(
                left: cap / (100 / 320),
                child: Container(
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                    color: kBgColor,
                    borderRadius: BorderRadius.circular(1.0),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  leadingSubtitle,
                  style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w300),
                ),
              ),
              Text(
                trailingSubtitle,
                style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
