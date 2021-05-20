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
          horizontal: 25.0,
          vertical: 50.0,
        ).copyWith(bottom: 20.0),
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
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text(
                    Strings.email,
                    style: Styles.styleW400S14,
                  ),
                ),
                const SizedBox(height: 5.0),
                CustomTextField(hint: Strings.email),
                const SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text(
                    Strings.password,
                    style: Styles.styleW400S14,
                  ),
                ),
                const SizedBox(height: 5.0),
                CustomTextField(
                  isPassword: true,
                  hint: Strings.password,
                ),
                const SizedBox(height: 15.0),
                ForgorPassword(),
                const SizedBox(height: 20.0),
                Center(
                  child: AuthButton(
                    width: 160.0,
                    text: Strings.logIn,
                    action: () => goToNamed(context, Routes.welcome, {}),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                    ).copyWith(bottom: 20.0),
                    child: Text(Strings.or),
                  ),
                ),
                SocialButtonsGroup(),
                const SizedBox(height: 20.0),
                Center(
                  child: GestureDetector(
                    onTap: () => goToNamed(
                      context,
                      Routes.signIn,
                      {},
                      isReplacePage: true,
                    ),
                    child: Text(
                      '${Strings.dontHaveAccount}    ${Strings.registeration}',
                      style:
                          Styles.styleW400S14.copyWith(color: AppColors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
