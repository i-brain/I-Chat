import 'package:flutter/material.dart';
import 'package:i_chat/constants/app_text_styles.dart';
import 'package:i_chat/constants/assets.dart';
import 'package:i_chat/presentation/home/widgets/chat_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('I-Chat'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const SizedBox(
            height: 75,
            child: ChatTile(),
          );
        },
      ),
    );
  }
}
