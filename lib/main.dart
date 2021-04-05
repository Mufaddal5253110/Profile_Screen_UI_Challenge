import 'package:flutter/material.dart';
import 'package:profile_app_ui_challenge/bottomNavigationScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile App',
      theme: ThemeData(
        canvasColor: Colors.white.withOpacity(0.95),
        primarySwatch: Colors.blue,
      ),
      home: BottomNavOne(),
    );
  }
}
