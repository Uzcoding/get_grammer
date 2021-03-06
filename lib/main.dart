import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_grammer/screens/screens.dart';
import 'package:get_grammer/utils/theme.dart';
import 'package:get_grammer/utils/utils.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarBrightness: Brightness.dark,
    statusBarColor: Colors.transparent,
  ));
  final app = App();
  runApp(app);
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      home: HomeScreen(),
      onGenerateRoute: (settings) => Routes.generateRoute(settings),
    );
  }
}
