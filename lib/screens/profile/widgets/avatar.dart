import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_grammer/resources/resources.dart';
import 'package:get_grammer/utils/utils.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 120.0,
          backgroundColor: AppColors.darkBlue,
          backgroundImage: AssetImage(Images.user),
        ),
        Container(
          width: 240.0,
          height: 240.0,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment(-0.68, -1.3),
              end: Alignment(0.91, 1.27),
              colors: [const Color(0x90ff21c7), const Color(0x903b70ff)],
              stops: [0.0, 1.0],
            ),
            borderRadius: BorderRadius.circular(240.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(Svgs.camera),
              const SizedBox(height: 5.0),
              Text(
                Strings.changePhoto,
                style: Styles.styleW700S25.copyWith(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
