import 'package:flutter/material.dart';
import 'package:latp/screen_four.dart';

import 'app/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  LogInScreen(),
      routes: {
        ScreenFour.id: (context) => const ScreenFour(),
      },
    );
  }
}
