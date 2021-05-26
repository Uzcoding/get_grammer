import 'package:flutter/material.dart';
import 'package:get_grammer/resources/resources.dart';
import 'package:get_grammer/utils/utils.dart';

import 'menu_item.dart';

class DrawerMenu extends StatelessWidget {
  DrawerMenu({
    Key? key,
  }) : super(key: key);

  final Map<int, Map<String, dynamic>> drawerMenuData = {
    0: {
      'icon': Svgs.profile,
      'title': Strings.profile,
      'route': Routes.profile
    },
    1: {
      'icon': Svgs.subscription,
      'title': Strings.subscription,
      'route': Routes.subscription
    },
    2: {
      'icon': Svgs.notification,
      'title': Strings.notification,
      'route': Routes.notification
    },
    3: {
      'icon': Svgs.settings,
      'title': Strings.settings,
      'route': Routes.settings
    },
    4: {
      'icon': Svgs.support,
      'title': Strings.support,
      'route': Routes.support,
    },
    5: {
      'icon': Svgs.chat,
      'title': Strings.chat,
      'route': Routes.chats,
    },
    6: {
      'icon': Svgs.logOut,
      'title': Strings.logOut,
    },
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        drawerMenuData.length,
        (index) => DrawerMenuItem(
          icon: drawerMenuData[index]!['icon'],
          title: drawerMenuData[index]!['title'],
          action: () => drawerMenuData[index]!['route'] != null
              ? goToNamed(context, drawerMenuData[index]!['route'], {})
              : null,
        ),
      ),
    );
  }
}
