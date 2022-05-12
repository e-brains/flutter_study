import 'package:flutter/material.dart';

class UiHomePage extends StatelessWidget {
  const UiHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigator - Home Page"),
      ),
      body: Column(
        children: [
          // 다음 페이지에서 이미지가 이동하는 것 처럼 보이게 한다.
          Hero(
            tag: "banner",
            child: Image.asset("assets/credit_card.png"),
          ),
          Expanded(
            child: Container(
              color: Colors.orange,
              alignment: Alignment.center,
              child: ElevatedButton(
                child: const Text("서브 페이지로 이동"),
                onPressed: () {
                  Navigator.pushNamed(context, "/sub");
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
