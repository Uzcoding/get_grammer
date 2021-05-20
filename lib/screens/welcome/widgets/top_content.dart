import 'package:flutter/material.dart';
import 'package:get_grammer/resources/resources.dart';

class TopContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: size.height / 10),
      height: size.height / 3,
      child: Center(
        child: Image.asset(
          Images.logoWithText,
          width: size.width / 1.4,
        ),
      ),
    );
  }
}
