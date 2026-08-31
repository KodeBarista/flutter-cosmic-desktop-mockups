import "package:flutter/material.dart";

import '../comp/comp_app_page_shell.dart';
import '../comp/comp_divider.dart';
import '../comp/comp_draw_svg.dart';
import '../comp/comp_parent_tile.dart';
import '../comp/comp_title_bar.dart';
import '../constants.dart';
import '../widgets/accent_button.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/message_builder.dart';
import '../widgets/messages_nav_bar.dart';

enum CalcView { basic, scientific, other, history }

class MessagesWindow extends StatelessWidget {
  const MessagesWindow({super.key});

  @override
  Widget build(BuildContext context) {
    bool navbarVisible = true;

    return CompAppPageShell(
      alpha: 150,
      width: 890,
      children: [
        CompTitleBar(
          navbarVisible: true,
          showSearch: true,
          fileMenuEntries: [],
        ),
        Container(
          height: 800,
          padding: EdgeInsets.fromLTRB(8, 0, 12, 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
              if (navbarVisible) MessagesNavBar(),
              Expanded(child: MessageView()),
            ],
          ),
        ),
      ],
    );
  }
}

class MessageView extends StatelessWidget {
  const MessageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: kCompColor,
                shape: BoxShape.circle,
              ),
              padding: EdgeInsets.all(8),
              child: CompDrawSvg(
                iconName: "user",
                color: kAccentColor,
                size: 24,
              ),
            ),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "John Doe",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 2),
                Text("1244251226"),
              ],
            ),
          ],
        ),
        SizedBox(height: 12),
        CompDivider(),

        Messages(
          messages: [
            Message(
              text: "Yeah, I noticed that too. The current layout feels a bit crowded.",
              time: "17:23",
              isMine: true,
            ),
            Message(
              text: "Exactly. I was thinking we could move some of the less-used actions into the menu.",
              time: "17:24",
              isMine: false,
            ),
            Message(
              text: "That makes sense. We could also keep the main actions visible so they're easier to reach.",
              time: "17:26",
              isMine: true,
            ),
            Message(
              text: "Right. I can put together a quick mockup and send it over later today.",
              time: "17:28",
              isMine: false,
            ),
            Message(
              text: "Perfect. Send it whenever you have it. I'll take a look and we can discuss it tomorrow.",
              time: "17:30",
              isMine: true,
            ),
            Message(text: "Sounds good 👍", time: "17:31", isMine: false),
            Message(text: "Thanks!", time: "17:32", isMine: true),
          ],
        ),
        Spacer(),

        CompParentTile(
          alpha: 120,
          padding: EdgeInsetsGeometry.symmetric(horizontal: 12, vertical: 16),
          child: Row(
            spacing: 12,
            children: [
              CompDrawSvg(iconName: "emoji", size: 20),
              CompDrawSvg(iconName: "attachment", size: 20),
              Expanded(child: CustomTextField(placeholder: "Type a message...")),
              AccentButton(padding: EdgeInsets.all(10), iconName: "send"),
            ],
          ),
        ),
      ],
    );
  }
}
