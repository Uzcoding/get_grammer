import 'package:flutter/material.dart';
import 'package:get_grammer/utils/utils.dart';
import 'package:get_grammer/widgets/back_and_logo_bar.dart';
import 'package:get_grammer/widgets/widgets.dart';

import 'widgets/widgets.dart';

class SubScriptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backAndLogoBar(context),
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 22.0).copyWith(top: 27.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(Strings.subscription, style: Styles.styleW600S21),
            const SizedBox(height: 27.0),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff949494),
                    offset: Offset(0, 1),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  TopContent(),
                  BottomContent(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
