import 'package:flutter/material.dart';
import 'package:get_grammer/resources/resources.dart';
import 'package:get_grammer/utils/utils.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 22.0),
      width: double.infinity,
      height: 220.0,
      decoration: BoxDecoration(
        color: AppColors.darkBlue,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            Images.drawerBg,
          ),
        ),
      ),
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 4,
              ),
            ),
            child: CircleAvatar(
              radius: 32.0,
              backgroundImage: AssetImage(Images.user),
              backgroundColor: AppColors.darkBlue,
            ),
          ),
          const SizedBox(width: 8.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Rohit Sharma',
                style: Styles.styleW600S13.copyWith(color: Colors.white),
              ),
              const SizedBox(height: 6.0),
              Text(
                'ID 265',
                style: Styles.styleW400S9.copyWith(color: Colors.grey),
              ),
              const SizedBox(height: 20.0),
              Container(
                alignment: Alignment.center,
                width: 75.0,
                height: 21.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: AppColors.yellow,
                ),
                child: Text(
                  Strings.premium,
                  style: Styles.styleW400S9,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
