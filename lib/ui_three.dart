import 'package:flutter/material.dart';

class MyAppUiThree extends StatelessWidget {
  const MyAppUiThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppUiThreePage(),
    );
  }
}

class MyAppUiThreePage extends StatelessWidget {
  const MyAppUiThreePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        height: 600,
        width: 300,
        alignment: Alignment.center, // 위치 지정
        child: AspectRatio(
          // 비율을 주는 위젯 가로 세로 비율은 너비와 높이의 비율로 표시됩니다.
          // 예를 들어 16:9 너비:높이 종횡비는 16.0/9.0의 값을 갖습니다.
          aspectRatio: 3.0/3.0, // 부모 크기 안에서 가로세로 비율이 동일하게 됨
          child: Container(          
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
