import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerMenuItem extends StatelessWidget {
  final String icon;
  final String title;
  final GestureTapCallback action;
  const DrawerMenuItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        contentPadding: const EdgeInsets.only(left: 31.0),
        leading: SvgPicture.asset(
          icon,
          width: 25.0,
          height: 25.0,
        ),
        title: Text(title),
        onTap: action,
      ),
    );
  }
}
