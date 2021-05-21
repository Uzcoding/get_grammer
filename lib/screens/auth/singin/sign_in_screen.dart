import 'package:flutter/material.dart';
import 'package:get_grammer/utils/utils.dart';

import 'widgets/widgets.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
