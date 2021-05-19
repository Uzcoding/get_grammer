import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_grammer/resources/resources.dart';
import 'package:get_grammer/utils/utils.dart';

class TopContent extends StatelessWidget {
  const TopContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.darkBlue,
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
    );
  }
}
