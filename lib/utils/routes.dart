import 'package:flutter/material.dart';
import 'package:get_grammer/screens/auth/singin/sign_in_screen.dart';
import 'package:get_grammer/screens/screens.dart';

abstract class Routes {
  static const String home = '/home';
  static const String signIn = '/sign-in';
  static const String signUp = '/sign-up';
  static const String welcome = '/welcome';

  static generateRoute(settings) {
    switch (settings.name) {
      case Routes.signIn:
        return MaterialPageRoute(
          builder: (context) => SignInScreen(),
        );

      case Routes.signUp:
        return MaterialPageRoute(
          builder: (context) => SignUpScreen(),
        );

      case Routes.welcome:
        return MaterialPageRoute(
          builder: (context) => WelcomeScreen(),
        );
    }
  }
}

Future<dynamic> goToNamed(
    BuildContext context, String route, Map<String, dynamic> data,
    {isReplacePage = false, isRemovePreviously = false}) async {
  print("goTo $route");
  if (isReplacePage)
    return Navigator.pushReplacementNamed(context, route, arguments: data);
  else if (isRemovePreviously) {
    return Navigator.pushNamedAndRemoveUntil(context, route, (v) => false,
        arguments: data);
  } else
    return Navigator.pushNamed(context, route, arguments: data);
}