import 'package:dear_flutter_two/my_ui_four.dart';
import 'package:dear_flutter_two/my_ui_one.dart';
import 'package:dear_flutter_two/my_ui_three.dart';
import 'package:dear_flutter_two/my_ui_two.dart';
import 'package:dear_flutter_two/screens/home_page.dart';
import 'package:dear_flutter_two/ui_one.dart';
import 'package:dear_flutter_two/ui_three.dart';
import 'package:dear_flutter_two/ui_two.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppUiFour());
}

class MyAppUiFour extends StatelessWidget {
  const MyAppUiFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("앱바 제목"),
        ),
        body: UiHomePage(),
      ),
    );
  }
}


