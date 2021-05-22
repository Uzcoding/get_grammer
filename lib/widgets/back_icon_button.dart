import 'package:flutter/material.dart';
import 'package:get_grammer/utils/utils.dart';

class BackIconButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: IconButton(
        onPressed: () => Navigator.pop(context),
        iconSize: 30.0,
        splashRadius: 25.0,
        icon: Icon(
          Icons.arrow_back_ios,
          color: AppColors.darkBlue,
        ),
      ),
    );
  }
}
