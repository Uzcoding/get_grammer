import 'package:flutter/material.dart';
import 'package:get_grammer/utils/utils.dart';

import 'widgets/widgets.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBlue,
      body: Column(
        children: <Widget>[
          TopContent(),
          BottomContent(),
        ],
      ),
    );
  }
}
