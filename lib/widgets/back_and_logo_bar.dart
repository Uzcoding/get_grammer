import 'package:flutter/material.dart';
import 'package:get_grammer/resources/resources.dart';
import 'package:get_grammer/utils/utils.dart';

AppBar backAndLogoBar(BuildContext context) {
    return AppBar(
      leading: Padding(
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
      ),
      actions: [
        Image.asset(
          Images.logo,
          width: 150.0,
          height: 30.0,
        ),
      ],
    );
  }