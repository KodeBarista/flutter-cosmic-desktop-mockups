import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import '../comp/comp_page_shell.dart';
import '../comp/comp_search_bar.dart';
import '../helper/nav_helper.dart';
import '../widgets/application_list.dart';
import '../widgets/category_sidebar.dart';
import 'logo_select_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CompPageShell(
      children: [
        Row(
          spacing: 8,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: CompDrawSvg(
                onTap: () => NavHelper.openPage(context, LogoSelectPage()),
                iconName: "pop-os",
                monochrome: false,
                size: 34,
              ),
            ),
            Expanded(child: CompSearchBar(placeholder: "Search apps...")),
          ],
        ),
        SizedBox(height: 10),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ApplicationList(), SizedBox(width: 8), CategorySidebar()],
        ),
      ],
    );
  }
}
