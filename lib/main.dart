import 'package:flutter/material.dart';
import 'package:tohri_foods/utils/constants.dart';

import 'features/auth/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tohri Foods',
      theme: AppTheme.lightTheme,
      home: LoginScreen(),
    );
  }
}


