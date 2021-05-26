import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_grammer/resources/resources.dart';
import 'package:get_grammer/utils/utils.dart';
import 'package:get_grammer/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => _scaffoldKey.currentState!.openDrawer(),
          padding: EdgeInsets.only(left: 22.0),
          splashRadius: 25.0,
          icon: SvgPicture.asset(
            Svgs.drawer,
            width: 31.0,
            height: 31.0,
            fit: BoxFit.cover,
            color: AppColors.darkBlue,
          ),
        ),
        actions: [
          Image.asset(
            Images.logo,
            width: 150.0,
            height: 30.0,
          ),
        ],
      ),
      drawer: CustomDrawer(),
    );
  }
}
