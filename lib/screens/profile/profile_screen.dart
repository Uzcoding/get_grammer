import 'package:flutter/material.dart';
import 'package:get_grammer/utils/utils.dart';
import 'package:get_grammer/widgets/widgets.dart';

import 'widgets/widgets.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backAndLogoBar(context),
      body: ScrollConfiguration(
        behavior: CustomBehavior(),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 30.0),
                Center(
                  child: Column(
                    children: [
                      ProfileAvatar(),
                      const SizedBox(height: 30.0),
                      Text(
                        'Raphael Roytman',
                        style: Styles.styleW600S21.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.profileName,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10.0),
                      Container(
                        width: 142.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                          color: AppColors.yellow,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Center(
                          child: Text(
                            Strings.premium,
                            style: Styles.styleW500S17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50.0),
                ProfileInput(
                  label: Strings.nickName,
                  hint: 'Введите никнейм',
                ),
                ProfileInput(
                  type: TextInputType.emailAddress,
                  label: Strings.profileEmail,
                  hint: 'Введите почту',
                ),
                ProfileInput(
                  label: Strings.loaction,
                  hint: 'Введите ${Strings.loaction.toLowerCase()}',
                ),
                const SizedBox(height: 30.0),
                ChangeButton(),
                const SizedBox(height: 50.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
