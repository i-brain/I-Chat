import 'dart:math';

import 'package:flutter/material.dart';
import 'package:i_chat/constants/assets.dart';
import 'package:i_chat/presentation/chat/widgtes/chat_app_bar.dart';
import 'package:i_chat/presentation/chat/widgtes/chat_text_field.dart';
import 'package:i_chat/presentation/chat/widgtes/message_card.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50), child: ChatAppBar()),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                Images.backgrounfPhoto,
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: MessageCard(
                      side: Random().nextBool() ? Side.left : Side.right,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 70,
              child: ChatTextField(),
            )
          ],
        ),
      ),
    );
  }
}
