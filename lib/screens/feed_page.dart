import 'package:dear_flutter_three/model/user_model.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 데이터를 받는다.
    User user = ModalRoute.of(context)?.settings.arguments as User;

    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator - Feed Page ${user.username} "),
      ),
      body: Container(
        color: Colors.green,
        alignment: Alignment.center,
        child: ElevatedButton(
          child: const Text("홈 페이지로 이동"),
          onPressed: () {
            // 그동안 Stack에 쌓인 모든 화면을 제거하면서 한번에 홈으로 이동
            Navigator.pushNamedAndRemoveUntil(
              context,
              "/home",
              (route) => false, // false : 화면 제거, true : 제거 안함
            );
          },
        ),
      ),
    );
  }
}
