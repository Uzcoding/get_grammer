import 'package:flutter/material.dart';
import 'package:get_grammer/utils/utils.dart';
import 'package:get_grammer/widgets/widgets.dart';

AppBar backAndCenterTitleBar(String title) {
  return AppBar(
    leading: BackIconButton(),
    title: Text(
      title,
      style: Styles.styleW600S21,
    ),
    centerTitle: true,
  );
}
