import 'package:flutter/material.dart';
import 'package:get_grammer/resources/resources.dart';
import 'package:get_grammer/utils/utils.dart';

class TopContent extends StatelessWidget {
  const TopContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 17.0,
        right: 32.0,
        top: 16.0,
      ),
      decoration: BoxDecoration(
        color: AppColors.darkBlue,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18.0),
          topRight: Radius.circular(18.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          RichText(
            text: TextSpan(
              style: Styles.styleW500S15,
              children: [
                TextSpan(text: 'Со статусом'),
                TextSpan(
                  text: ' ${Strings.premium} ',
                  style: Styles.styleW500S15.copyWith(color: AppColors.yellow),
                ),
                TextSpan(
                    text: 'Вы получите\nдоступ ко всем возможностям системы:'),
              ],
            ),
          ),
          const SizedBox(height: 33.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    Strings.subscriptionText,
                    style: Styles.styleW400S11.copyWith(
                        color: AppColors.subscriptionGrey, height: 1.6),
                  ),
                ],
              ),
              Image.asset(
                Images.premium,
                width: 90.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
