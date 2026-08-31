import 'package:flutter/material.dart';

import '../comp/comp_parent_tile.dart';
import '../constants.dart';

class Message {
  final String text;
  final String time;
  final bool isMine;

  const Message({required this.text, required this.time, required this.isMine});
}

class Messages extends StatelessWidget {
  final List<Message> messages;

  const Messages({super.key, required this.messages});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.all(16),
      itemCount: messages.length,
      itemBuilder: (context, index) {
        final message = messages[index];

        return Align(
          alignment: message.isMine
              ? Alignment.centerRight
              : Alignment.centerLeft,

          child: Container(
            constraints: const BoxConstraints(maxWidth: 320),
            padding: EdgeInsets.only(bottom: 12),
            child: CompParentTile(
              color: message.isMine
                  ? kAccentColor.withAlpha(150)
                  : kBgColor.withAlpha(120),
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: 12,
                vertical: 8,
              ),
              child: Column(
                crossAxisAlignment: message.isMine
                    ? CrossAxisAlignment.end
                    : CrossAxisAlignment.start,
                children: [
                  Text(
                    message.text,
                    style: TextStyle(
                      color: message.isMine ? Colors.black : null,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    message.time,
                    style: TextStyle(
                      fontSize: 11,
                      color: message.isMine ? Colors.black87 : Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
