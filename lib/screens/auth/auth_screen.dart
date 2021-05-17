import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_grammer/resources/resources.dart';
import 'package:get_grammer/utils/utils.dart';
import 'package:get_grammer/widgets/custom_behavior.dart';
import 'package:get_grammer/widgets/widgets.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.darkBlue,
      body: Container(
        height: double.infinity,
        child: ScrollConfiguration(
          behavior: CustomBehavior(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(top: 50.0, bottom: 20.0),
                  child: SafeArea(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 25.0,
                            top: 40.0,
                          ),
                          child: Text(
                            Strings.auth,
                            style: Styles.styleW600S25,
                          ),
                        ),
                        SvgPicture.asset(
                          Svgs.authLogo,
                          height: 200.0,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25.0,
                    vertical: 50.0,
                  ),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff706868),
                        offset: Offset(-2, -2),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Text(
                          Strings.email,
                          style: Styles.styleW400S16,
                        ),
                      ),
                      const SizedBox(height: 5.0),
                      CustomTextField(hint: Strings.email),
                      const SizedBox(height: 20.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Text(
                          Strings.password,
                          style: Styles.styleW400S16,
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
                          action: () => print('to login'),
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
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width / 100 * 12),
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
                      ),
                      const SizedBox(height: 20.0),
                      Center(
                        child: GestureDetector(
                          onTap: () => print('to register'),
                          child: Text(
                            '${Strings.dontHaveAccount}    ${Strings.registeration}',
                            style: Styles.styleW400S16
                                .copyWith(color: AppColors.black),
                          ),
                        ),
                      )
                    ],
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
          style: Styles.styleW400S16.copyWith(
            color: AppColors.white,
            fontSize: 14.0,
          ),
        ),
      ),
    );
  }
}

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
          style: Styles.styleW400S16.copyWith(color: AppColors.black),
        ),
      ),
    );
  }
}
