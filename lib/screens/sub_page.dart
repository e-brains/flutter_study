import 'package:dear_flutter_three/model/user_model.dart';
import 'package:flutter/material.dart';

class SubPage extends StatelessWidget {
  const SubPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigator - Sub Page"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              alignment: Alignment.center,
              child: ElevatedButton(
                child: const Text("피드 페이지로 이동"),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    "/feed",
                    // 데이터를 arguments 속성을 이용하여 오브젝트로 넘긴다.
                    arguments: User("김갑동", "1234"),
                  );
                },
              ),
            ),
          ),
          // 이전 페이지는 이미지가 상단에 여기는 하단에 위치 시키면
          // 이미지가 아래로 이동하는 것 처럼 보인다.
          Hero(
            tag: "banner",
              child: Image.asset("assets/credit_card.png"),
          )

        ],
      ),
    );
  }
}
