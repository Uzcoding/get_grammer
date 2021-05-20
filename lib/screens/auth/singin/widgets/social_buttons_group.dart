import 'package:flutter/material.dart';
import 'package:get_grammer/resources/resources.dart';
import 'package:get_grammer/utils/utils.dart';
import 'package:get_grammer/widgets/widgets.dart';

class SocialButtonsGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width / 100 * 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SocialButton(
            icon: Svgs.googlePlus,
            color: AppColors.orange,
            action: () => print('google+'),
          ),
          SocialButton(
            icon: Svgs.facebook,
            color: AppColors.blue,
            action: () => print('facebook'),
          ),
          SocialButton(
            icon: Svgs.twitter,
            color: AppColors.skyBlue,
            action: () => print('twiter'),
          ),
        ],
      ),
    );
  }
}
