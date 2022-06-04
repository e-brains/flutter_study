import 'dart:math';

import 'package:flutter/material.dart';

class MyAppTwo extends StatelessWidget {
  const MyAppTwo({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePageTwo(),
    );
  }
}

class MyHomePageTwo extends StatefulWidget {
  const MyHomePageTwo ({Key? key}) : super(key: key);

  @override
  State<MyHomePageTwo> createState() => _MyHomePageTwoState();
}

class _MyHomePageTwoState extends State<MyHomePageTwo> {

  List<Widget> boxes = [MyBox(ValueKey(1)), MyBox(ValueKey(2))];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            boxes.insert(1, boxes.removeAt(0)); // 0번째를 빼서 1번째로 입력 (swap)
             // Widget b = boxes.removeAt(0); // 0번째 박스를 제거하면서 b에 저장
             // boxes.add(b);  // b를 다시 boxes배열의 끝에 추가한다.
          });
        },
        child: Icon(Icons.cloud_download),
      ),
      appBar: AppBar(
        title: const Text("MyPageOne"),
      ),
      body: SafeArea(
          child: Row(
            children: boxes,
          ),
      ),
    );
  }
}

class MyBox extends StatefulWidget {
  @override
  State<MyBox> createState() => _MyBoxState();

  // alt+insert 생성자 만들기
  MyBox(Key key):super(key: key){  // initiallized 키원드를 사용해서 조상의 생성자를 초기화 한다.
    // super(key: key);  // 부모에게 key를 넘겨주지 못한다.
  }
  // ** 자바는 자식의 생성자가 실행될 때 자식의 생성자 스택이 먼저 실행되는데
  // dart는 자식의 생성자 스택이 실행되기 전에 조상의 생성자가 먼저 실행된다.
  // 즉, key를 넘겨주는  super(key); 코드가 실행되기전에 부모 생성자가 실행되므로
  // key를 넘겨주지 못해서 에러가 발생한다.
}

class _MyBoxState extends State<MyBox> {
  Color mColor = Colors.primaries[Random().nextInt((Colors.primaries.length))];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mColor, // 랜덤으로 색이 바뀐다.
      height: 150,
      width: 150,
    );
  }
}
