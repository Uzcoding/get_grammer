import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialButton extends StatelessWidget {
  final Function action;
  final Color color;
  final String icon;

  const SocialButton({
    Key? key,
    required this.action,
    required this.color,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.0,
      height: 60.0,
      child: ElevatedButton(
        onPressed: () => action.call(),
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(16.0),
          ),
        ),
        child: SvgPicture.asset(
          icon,
          width: 30.0,
          height: 30.0,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
