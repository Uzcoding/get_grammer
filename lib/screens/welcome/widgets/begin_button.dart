import 'package:flutter/material.dart';
import 'package:get_grammer/utils/utils.dart';

class BeginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190.0,
      height: 55.0,
      child: ElevatedButton(
        onPressed: () => goToNamed(context, Routes.settings, {}),
        style: ElevatedButton.styleFrom(
            primary: AppColors.darkBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Spacer(flex: 2),
            Text(Strings.begin),
            Spacer(),
            Container(
              width: 35.0,
              height: 35.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: AppColors.forwardBg,
              ),
              child: Icon(
                Icons.arrow_forward,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
