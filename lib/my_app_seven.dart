import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePageSeven extends StatefulWidget {
  const MyHomePageSeven({Key? key}) : super(key: key);

  @override
  State<MyHomePageSeven> createState() => _MyHomePageSevenState();
}

class _MyHomePageSevenState extends State<MyHomePageSeven> {
  Color mColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedDefaultTextStyle(
              child: Text("AnimatedDefaultTextStyle"),
              style: TextStyle(color: mColor, fontSize: 30),
              duration: Duration(seconds: 3),
            ),
            ElevatedButton(
              onPressed: (){
                // 클릭하면 색을 바꾼다.
                setState(() {
                  mColor = Colors.orange;
                });
              },
              child: Text("색 바꾸기"),
            ),
            ElevatedButton(
              onPressed: (){
                // 클릭하면 원래 상태로 바꾼다.
                setState(() {
                  mColor = Colors.blue;
                });
              },
              child: Text("원래 상태로"),
            ),
          ],
        ),
      ),
    );
  }
}
