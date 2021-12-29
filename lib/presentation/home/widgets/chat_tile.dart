import 'package:flutter/material.dart';
import 'package:i_chat/constants/app_text_styles.dart';
import 'package:i_chat/constants/assets.dart';
import 'package:i_chat/constants/routes.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: AssetImage(Images.profilePhoto),
        radius: 25,
      ),
      onTap: () {
        Navigator.pushNamed(context, Routes.chatScreen);
      },
      title: const Text(
        'Name',
        style: AppTextStyles.nameStyle,
      ),
      subtitle: const Text(
        'Last message',
        style: AppTextStyles.greyStyle,
      ),
      trailing: const Text(
        '15:28',
        style: AppTextStyles.greyStyle,
      ),
    );
  }
}
