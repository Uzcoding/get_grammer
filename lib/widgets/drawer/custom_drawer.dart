import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          const CustomDrawerHeader(),
          const SizedBox(height: 50.0),
          SingleChildScrollView(child: DrawerMenu()),
        ],
      ),
    );
  }
}
