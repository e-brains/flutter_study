import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePageSix extends StatefulWidget {
  const MyHomePageSix({Key? key}) : super(key: key);

  @override
  State<MyHomePageSix> createState() => _MyHomePageSixState();
}

class _MyHomePageSixState extends State<MyHomePageSix> {
  double _boxOpacity = 1.0;

  @override
  void initState() {
    super.initState();
    // 시작 후 3초 뒤 투명 효과
    Future.delayed(Duration(seconds: 3),()=>{
      change()
    });
  }

  void change(){
    setState(() {
      _boxOpacity = 0.2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                setState(() {
                  _boxOpacity = 1.0;
                });
              }, child: Text("원래상태로"),
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  change();
                });
              }, child: Text("투명 효과"),
            ),
            AnimatedOpacity(
              opacity: _boxOpacity, // 불투명도 , 1 이 max
              duration: Duration(seconds: 3),
              child: Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
