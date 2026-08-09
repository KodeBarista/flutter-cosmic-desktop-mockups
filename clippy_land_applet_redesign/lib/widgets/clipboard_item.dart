import 'package:flutter/material.dart';

import '../comp/comp_draw_svg.dart';
import '../comp/comp_parent_tile.dart';
import '../models/clipboard_item.dart';

class ClipboardItem extends StatelessWidget {
  const ClipboardItem({super.key, required this.type, required this.content});

  final ItemType type;
  final String content;

  @override
  Widget build(BuildContext context) {
    late Widget widget;
    late String dynamicIcon;

    switch (type) {
      case ItemType.text:
        {
          widget = Text(content, overflow: TextOverflow.ellipsis, maxLines: 4);
          dynamicIcon = "eye";
        }
      case ItemType.url:
        {
          widget = Text(
            content,
            style: TextStyle(decoration: TextDecoration.underline),
            overflow: TextOverflow.ellipsis,
            maxLines: 4,
          );
          dynamicIcon = "open";
        }
      case ItemType.image:
        {
          widget = Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(content),
              if (content.endsWith("tree.png"))
                Positioned(
                  top: 0,
                  left: 0,
                  child: CompParentTile(
                    alpha: 200,
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Text("728x389", style: TextStyle(fontSize: 12)),
                  ),
                ),
            ],
          );
          dynamicIcon = "save";
        }
    }

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 110,
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            spacing: 12,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: widget,
                ),
              ),
              if (content.endsWith("tree.png"))
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CompDrawSvg(iconName: "pin"),
                    CompDrawSvg(iconName: "delete"),
                    CompDrawSvg(iconName: dynamicIcon),
                  ],
                ),
              if (!content.endsWith("tree.png"))
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CompDrawSvg(iconName: "pin", color: Colors.white70),
                    CompDrawSvg(iconName: "delete", color: Colors.white70),
                    CompDrawSvg(iconName: dynamicIcon, color: Colors.white70),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
