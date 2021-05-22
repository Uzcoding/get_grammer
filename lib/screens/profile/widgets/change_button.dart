import 'package:flutter/material.dart';
import 'package:get_grammer/utils/utils.dart';

class ChangeButton extends StatelessWidget {
  const ChangeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.0,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            AppColors.speakBg,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          Strings.change,
          style: Styles.styleW600S19.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
