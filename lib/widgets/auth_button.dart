import 'package:flutter/material.dart';
import 'package:get_grammer/utils/utils.dart';

class AuthButton extends StatelessWidget {
  final double width;
  final String text;
  final Function action;

  const AuthButton({
    Key? key,
    required this.width,
    required this.text,
    required this.action,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: ElevatedButton(
        onPressed: () => action.call(),
        style: ElevatedButton.styleFrom(
          primary: AppColors.darkBlue,
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 15.0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(50.0),
          ),
        ),
        child: Text(
          text,
          style: Styles.styleW400S14.copyWith(
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
