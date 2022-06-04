import 'package:flutter/material.dart';

class MyAppSeven extends StatelessWidget {
  const MyAppSeven({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePageSeven(),
    );
  }
}

class MyHomePageSeven extends StatelessWidget {
  const MyHomePageSeven({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
            children: [
              SizedBox(height: 50,
              width: double.infinity,
              ),
              ClipRRect(
                // 컨테이너의 높이넓이의 반만 주면 원이된다.
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                ),
              ),
              CircleAvatar( // 이미지를 동그라미 안에 넣을때 사용
                child: Text("안녕"),
              ),
              Stack( // 도형을 중첩해서 표현하고자 할때 사용
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(), // 테두리 선을 줄 수 있다.
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  Positioned(  // 위치 조정
                    right: 0, // 오른쪽
                    bottom: 0, // 아래
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),

                ],
              ),
              Stack( // 도형을 중첩해서 표현하고자 할때 사용
                children: [
                  Container(
                    height: 160,
                    width: 160,
                    decoration: BoxDecoration(
                      border: Border.all(), // 테두리 선을 줄 수 있다.
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(80),
                    ),
                  ),
                  Positioned(  // 작은 원을 큰 원 가운데 위치시키기
                    right: 40, // 오른쪽
                    bottom: 40, // 아래
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
      ),
    );
  }
}
