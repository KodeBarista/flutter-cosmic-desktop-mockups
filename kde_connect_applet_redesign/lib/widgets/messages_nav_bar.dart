import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import '../constants.dart';

class MessagesNavBar extends StatelessWidget {
  const MessagesNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xFF272D33),
      ),
      height: double.infinity,
      width: 285,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 8,
        children: [
          _NavBarItem(
            isActive: true,
            title: "John Doe",
            subtitle: "Offer for 8722XXXXXX!, Rech...",
          ),
          _NavBarItem(
            title: "AX-662512",
            subtitle: "Offer for 8722XXXXXX!, Rech...",
          ),
          _NavBarItem(
            title: "VK-BANK",
            subtitle: "Dear customer, Acct: 6276242...",
          ),
          _NavBarItem(
            title: "562551",
            subtitle: "We received a request to clos...",
          ),
          _NavBarItem(
            title: "JD-ALERT",
            subtitle: "Your order #48291 has been shi...",
          ),
          _NavBarItem(
            title: "TM-STORE",
            subtitle: "Thank you for shopping with us...",
          ),
          _NavBarItem(
            title: "QP-INFO",
            subtitle: "Your verification code is 482731...",
          ),
          _NavBarItem(
            title: "VK-BANK",
            subtitle: "A transaction of INR 1,250 was...",
          ),
          _NavBarItem(
            title: "AD-SERVICE",
            subtitle: "Your appointment is scheduled f...",
          ),
          _NavBarItem(
            title: "RM-UPDATE",
            subtitle: "Your request has been successful...",
          ),
          _NavBarItem(
            title: "XY-PAY",
            subtitle: "Payment received for order #829...",
          ),
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  const _NavBarItem({
    this.isActive = false,
    required this.title,
    required this.subtitle,
  });

  final bool isActive;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isActive ? Color(0xFF373C41) : null,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: kCompColor,
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(8),
            child: CompDrawSvg(iconName: "user", color: kAccentColor, size: 24),
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 2),
              Text(
                "${subtitle.substring(0, 27)}...",
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
