import 'package:flutter/material.dart';
import 'package:get_grammer/utils/utils.dart';
import 'package:get_grammer/widgets/widgets.dart';

import 'widgets.dart';

class BottomContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 50.0,
        ).copyWith(top: 100.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(50.0),
          ),
          boxShadow: AppTheme.shadow,
        ),
        child: ScrollConfiguration(
          behavior: CustomBehavior(),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text(
                  Strings.learnEnglish,
                  style: Styles.styleW600S19,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 45.0),
                Text(
                  Strings.welcomeText,
                  style: Styles.styleW400S14.copyWith(fontSize: 12.0),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 60.0),
                BeginButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
