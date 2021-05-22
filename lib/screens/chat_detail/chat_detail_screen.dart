import 'package:flutter/material.dart';
import 'package:get_grammer/widgets/widgets.dart';

import 'widgets/widets.dart';

class ChatDetailScreen extends StatefulWidget {
  ChatDetailScreen({Key? key}) : super(key: key);

  @override
  _ChatDetailScreenState createState() => _ChatDetailScreenState();
}

class _ChatDetailScreenState extends State<ChatDetailScreen> {
  final outlinedStyle = OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.circular(18.0),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backAndCenterTitleBar('Ройтман Рафаэль'),
      body: Container(
        height: double.infinity,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 38.0)
                .copyWith(bottom: 60.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29939393),
                    offset: Offset(0, 1),
                    blurRadius: 11,
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ChatInput(outlinedStyle: outlinedStyle),
                  ChatInputButtons()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
