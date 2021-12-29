import 'package:flutter/material.dart';
import 'package:i_chat/constants/app_text_styles.dart';
import 'package:i_chat/constants/assets.dart';

class ChatAppBar extends StatelessWidget {
  const ChatAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 30,
      title: ListTile(
        leading: const CircleAvatar(
          backgroundImage: AssetImage(Images.profilePhoto),
        ),
        title: const Text(
          'name',
          style: AppTextStyles.whiteTextStyle,
        ),
        subtitle: Opacity(
          opacity: 0.8,
          child: Text(
            'last seen',
            style: AppTextStyles.whiteTextStyle
                .copyWith(fontWeight: FontWeight.w400),
          ),
        ),
        contentPadding: EdgeInsets.zero,
      ),
    );
  }
}
