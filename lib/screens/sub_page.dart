import 'package:flutter/material.dart';

import 'home_page.dart';

class SubPage extends StatelessWidget {
  const SubPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("앱바 제목"),
      ),
      body: Container(
        color: Colors.red,
        alignment: Alignment.center,
        child: ElevatedButton(
          child: Text("홈 페이지로 이동"),
          onPressed: () {
            // Navigator.push는 화면이 계속 쌓이므로
            // pop을 써서 스택에서 꺼내야 함
            Navigator.pop(context); // 전 페이지로 이동
          },
        ),
      ),
    );
  }
}
