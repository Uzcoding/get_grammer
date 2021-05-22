import 'package:flutter/material.dart';
import 'package:get_grammer/utils/utils.dart';

class ChatInput extends StatelessWidget {
  const ChatInput({
    Key? key,
    required this.outlinedStyle,
  }) : super(key: key);

  final OutlineInputBorder outlinedStyle;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: Styles.styleW400S12,
      maxLines: 6,
      cursorColor: AppColors.darkBlue,
      decoration: InputDecoration(
        isCollapsed: true,
        filled: true,
        fillColor: Colors.white,
        hintText: Strings.writeMessage,
        hintStyle: Styles.styleW400S12.copyWith(color: AppColors.chat),
        contentPadding: const EdgeInsets.all(16.0).copyWith(bottom: 0),
        border: outlinedStyle,
        focusedBorder: outlinedStyle,
        enabledBorder: outlinedStyle,
        errorBorder: outlinedStyle,
        disabledBorder: outlinedStyle,
      ),
    );
  }
}
