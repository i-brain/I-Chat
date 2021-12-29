import 'package:flutter/material.dart';
import 'package:i_chat/constants/app_colors.dart';
import 'package:i_chat/constants/app_text_styles.dart';

enum Side {
  left,
  right,
}

class MessageCard extends StatelessWidget {
  const MessageCard({
    Key? key,
    required this.side,
  }) : super(key: key);

  final Side side;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Align(
      alignment:
          side == Side.right ? Alignment.centerRight : Alignment.centerLeft,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: const Radius.circular(16),
                  topRight: const Radius.circular(16),
                  topLeft: side == Side.left
                      ? Radius.zero
                      : const Radius.circular(16),
                  bottomRight: side == Side.right
                      ? Radius.zero
                      : const Radius.circular(16)),
              color: side == Side.right
                  ? AppColors.messageCardColor
                  : Colors.white,
              // color: Colors.red,
            ),
            constraints:
                BoxConstraints(maxWidth: size.width * 0.8, minWidth: 75),
            padding:
                const EdgeInsets.only(bottom: 24, top: 16, left: 16, right: 16),
            child: const Text(
              'hey how are u, fine thanks and u.',
              style: AppTextStyles.messageStyle,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
            height: 15,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '13:05',
                  style: AppTextStyles.greyStyle.copyWith(fontSize: 12),
                ),
                const Icon(
                  Icons.check,
                  size: 15,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
