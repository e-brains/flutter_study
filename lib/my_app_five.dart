import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePageFive extends StatefulWidget {
  const MyHomePageFive({Key? key}) : super(key: key);

  @override
  State<MyHomePageFive> createState() => _MyHomePageFiveState();
}

class _MyHomePageFiveState extends State<MyHomePageFive>{

  Widget _mWidget = FirstWidget();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
              duration: Duration(seconds: 3),
              // Refactor메뉴에서 자동으로 위젯으로 빼고 나서 변수에 담아서 여기서 사용.
              child: _mWidget,
            ),
            // 버튼이 클릭될 때 Container를 바꾼다.
            ElevatedButton(
              onPressed: (){
                setState(() {
                  _mWidget = SecondWidget();
                });
              },
              child: Text("버튼"),
            ),
          ],
        ),
      ),
    );
  }
}

class FirstWidget extends StatelessWidget {
  const FirstWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.blue,
    );
  }
}

class SecondWidget extends StatelessWidget {
  const SecondWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.orange,
    );
  }
}
