import 'package:dear_flutter_two/screens/sub_page.dart';
import 'package:flutter/material.dart';

class UiHomePage extends StatelessWidget {
  const UiHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      alignment: Alignment.center,
      child: ElevatedButton(
        child: Text("서브 페이지로 이동"),
        onPressed: () {
          Navigator.push(  // push는 호출 시 화면이 계속 쌓인다.
            context,
            MaterialPageRoute(
              builder: (context) => SubPage(),
            ),
          );
        },
      ),
    );
  }
}
