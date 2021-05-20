import 'package:flutter/material.dart';
import 'package:get_grammer/utils/utils.dart';
import 'package:get_grammer/widgets/custom_behavior.dart';
import 'package:get_grammer/widgets/widgets.dart';

import 'widgets/widgets.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBlue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          TopContent(),
          BottomContent(),
        ],
      ),
    );
  }
}
