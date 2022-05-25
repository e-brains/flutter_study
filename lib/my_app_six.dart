import 'package:flutter/material.dart';

class MyAppSix extends StatelessWidget {
  const MyAppSix({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePageSix(),
    );
  }
}

class MyHomePageSix extends StatefulWidget {
  const MyHomePageSix({Key? key}) : super(key: key);

  @override
  State<MyHomePageSix> createState() => _MyHomePageSixState();
}

class _MyHomePageSixState extends State<MyHomePageSix> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("SingleChildScrollView"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.green,
                height: 50,
                child: ListView.builder(
                  // defaut는 세로 스크롤
                  scrollDirection: Axis.horizontal, // 가로 스크롤
                    itemCount: 30,
                    itemBuilder: (context, index) => Text("메뉴1"),
                ),
              ),
              Container(
                color: Colors.red,
                height: 200,
                child: ListView.builder( // defaut는 세로 스크롤
                  itemCount: 30,
                  itemBuilder: (context, index) => Text("메뉴2"),
                ),
              ),
              Column(
                // 100개의 리스트로 만들어 줌
                children: List.generate(50, (index) => Text("메뉴3")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Scaffold body에서 Container위젯을 통째로 클래스로 떼어 냈다
// ctrl+alt+w 단축키 사용하여 별도의 위젯으로 떼어냄
// ctrl+alt+m 단축키는 별도의 method로 떼어 낼때 사용
class Menu extends StatelessWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center, // 자식을 센터로
      constraints: const BoxConstraints(
        minWidth: 100,
        minHeight: 50,
        maxWidth: 100,
        maxHeight: 50,
      ),
      color: Colors.green,
      child: const Text("메뉴1"),
    );
  }
}
