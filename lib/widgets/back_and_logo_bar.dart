import 'package:flutter/material.dart';
import 'package:get_grammer/resources/resources.dart';
import 'package:get_grammer/widgets/widgets.dart';

AppBar backAndLogoBar(BuildContext context) {
  return AppBar(
    leading: BackIconButton(),
    actions: [
      Image.asset(
        Images.logo,
        width: 150.0,
        height: 30.0,
      ),
    ],
  );
}
