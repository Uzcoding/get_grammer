import 'package:flutter/material.dart';
import 'package:get_grammer/screens/screens.dart';
import 'package:get_grammer/utils/colors.dart';

void main() {
  final app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.darkBlue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: AuthScreen(),
    );
  }
}
