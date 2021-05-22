import 'package:flutter/material.dart';
import 'package:get_grammer/resources/resources.dart';

class ChatInputButtons extends StatelessWidget {
  const ChatInputButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 5.0,
        vertical: 5.0,
      ).copyWith(top: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            splashRadius: 1.0,
            icon: Image.asset(
              Images.attachment,
              width: 30.0,
              height: 30.0,
            ),
            padding: EdgeInsets.zero,
            onPressed: () => print('file'),
          ),
          IconButton(
            splashRadius: 1.0,
            icon: Image.asset(
              Images.send,
              width: 30.0,
              height: 30.0,
            ),
            padding: EdgeInsets.zero,
            onPressed: () => print('send'),
          ),
        ],
      ),
    );
  }
}
