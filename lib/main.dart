import 'package:dear_flutter_animation/my_app_eight.dart';
import 'package:dear_flutter_animation/my_app_five.dart';
import 'package:dear_flutter_animation/my_app_four.dart';
import 'package:dear_flutter_animation/my_app_nine.dart';
import 'package:dear_flutter_animation/my_app_seven.dart';
import 'package:dear_flutter_animation/my_app_six.dart';
import 'package:dear_flutter_animation/my_app_three.dart';
import 'package:dear_flutter_animation/my_app_two.dart';
import 'package:flutter/material.dart';
import 'my_app_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePageNine(),
    );
  }
}





