import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePageFour extends StatefulWidget {
  const MyHomePageFour({Key? key}) : super(key: key);

  @override
  State<MyHomePageFour> createState() => _MyHomePageFourState();
}

class _MyHomePageFourState extends State<MyHomePageFour>
    with SingleTickerProviderStateMixin {

  double radian = 0;
  // 지속적으로 작동하고 싶을때
  // 단점 setState()를 사용하면 Build가 계속 호출되기 때문에
  // 비효율적이다.
  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    Timer.periodic(Duration(microseconds: 1000), (timer) {
      setState(() {
        radian = radian + pi/10;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 버튼 누를때 마다 60도씩 돌아가게 한다.
            ElevatedButton(
              onPressed: (){
                setState(() {
                  radian = radian + pi/10;  // 90도씩 돌아가게한다.
                });
              },
              child: Text("버튼"),
            ),
            Transform.rotate(
              angle: radian, // 얼마나 돌릴 것인지
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: Text("왼쪽모서리"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
