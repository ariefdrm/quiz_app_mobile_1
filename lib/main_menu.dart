import 'package:flutter/material.dart';
import 'package:quiz_app_mobile_1/homepage.dart';
import 'package:quiz_app_mobile_1/posts.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {'/posts': (context) => const Posts()},
      home: Homepage(),
    );
  }
}
