import 'package:flutter/material.dart';

import '../comp/comp_back_row.dart';
import '../comp/comp_page_shell.dart';
import '../widgets/bookmark_tile.dart';

class BookmarksPage extends StatelessWidget {
  const BookmarksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CompPageShell(
      children: [
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 365,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CompBackRow(),
                SizedBox(height: 20.0),
                Text(
                  "Bookmarks",
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 16.0),

                BookmarkTile(label: "Serendipity"),
                BookmarkTile(label: "Mellifluous"),
                BookmarkTile(label: "Sonder"),
                BookmarkTile(label: "Petrichor"),

                SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
