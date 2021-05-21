import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';

import 'package:get_grammer/utils/utils.dart';
import 'package:get_grammer/widgets/widgets.dart';

import 'widgets/widgets.dart';

class ChatsScreen extends StatelessWidget {
  final options = LiveOptions(
    delay: Duration(milliseconds: 800),
    showItemInterval: Duration(milliseconds: 300),
    showItemDuration: Duration(milliseconds: 600),
    visibleFraction: 0.05,
    reAnimateOnVisibility: false,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backAndLogoBar(context),
      body: Column(
        children: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                Strings.chat,
                style: Styles.styleW600S21,
              ),
            ),
          ),
          Expanded(
            child: LiveList.options(
              options: options,
              physics: BouncingScrollPhysics(),
              addAutomaticKeepAlives: false,
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              itemCount: 10,
              itemBuilder: buildAnimatedItem,
            ),
          ),
        ],
      ),
    );
  }
}
