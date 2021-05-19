import 'package:flutter/material.dart';
import 'package:get_grammer/utils/utils.dart';

class ForgorPassword extends StatelessWidget {
  const ForgorPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () {},
        child: Text(
          Strings.forgotPassword,
          style: Styles.styleW400S14.copyWith(color: AppColors.black),
        ),
      ),
    );
  }
}
