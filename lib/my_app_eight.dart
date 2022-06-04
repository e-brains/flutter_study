import 'package:flutter/material.dart';

class MyAppEight extends StatelessWidget {
  const MyAppEight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePageEight(),
    );
  }
}

class MyHomePageEight extends StatelessWidget {
  const MyHomePageEight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: PageView(  // TabBar업이 스와이핑이 가능함 (자식 위젯이 하나의 페이지가 됨)
            children: [
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.blue,
              ),
            ],
          ),
        ),
    );
  }
}
