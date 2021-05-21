import 'package:flutter/material.dart';
import 'package:get_grammer/utils/colors.dart';
import 'package:get_grammer/utils/utils.dart';
import 'package:get_grammer/widgets/widgets.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool checkDiscount = false;
  bool autoPronuncation = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backAndLogoBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(22.0, 25.0, 50.0, 80.0),
            child: Text(
              Strings.settings,
              style: Styles.styleW600S21,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(
              left: 22.0,
              right: 50.0,
            ),
            onTap: () {
              showModalBottomSheet(
                context: context,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                ),
                builder: (context) {
                  return Container(
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20.0,
                            bottom: 15.0,
                          ),
                          child: Text(
                            'Выберите голос',
                            style: Styles.styleW600S19,
                          ),
                        ),
                        ListTile(
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 20.0),
                          leading: Text(
                            Strings.male,
                            style: Styles.styleW500S17.copyWith(
                              color: AppColors.darkBlue,
                              fontSize: 16.0,
                            ),
                          ),
                          trailing: Icon(
                            Icons.check,
                            size: 30,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            leading: Text(
              Strings.voice,
              style: Styles.styleW500S17.copyWith(color: AppColors.darkBlue),
            ),
            trailing: Text(
              Strings.male,
              style: Styles.styleW500S17.copyWith(
                color: AppColors.darkBlue,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(
              left: 22.0,
              right: 50.0,
            ),
            onTap: () {},
            leading: Text(
              Strings.accent,
              style: Styles.styleW500S17.copyWith(color: AppColors.darkBlue),
            ),
            trailing: Text(
              Strings.british,
              style: Styles.styleW500S17.copyWith(
                color: AppColors.darkBlue,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SwitchListTile(
            contentPadding: EdgeInsets.only(
              left: 22.0,
              right: 50.0,
            ),
            value: checkDiscount,
            activeColor: AppColors.speakBg,
            activeTrackColor: AppColors.switchBg,
            inactiveTrackColor: AppColors.switchBg,
            onChanged: (value) {
              checkDiscount = value;
              setState(() {});
            },
            title: Text(
              Strings.discounts,
              style: Styles.styleW500S17.copyWith(color: AppColors.darkBlue),
            ),
            subtitle: Text(
              Strings.alerts,
              style: Styles.styleW400S9,
            ),
          ),
          SwitchListTile(
            activeColor: AppColors.speakBg,
            activeTrackColor: AppColors.switchBg,
            inactiveTrackColor: AppColors.switchBg,
            contentPadding: EdgeInsets.only(
              left: 22.0,
              right: 50.0,
            ),
            value: autoPronuncation,
            onChanged: (value) {
              autoPronuncation = value;
              setState(() {});
            },
            title: Text(
              Strings.autoPronuncation,
              style: Styles.styleW500S17.copyWith(color: AppColors.darkBlue),
            ),
          ),
        ],
      ),
    );
  }
}
