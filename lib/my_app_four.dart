import 'package:flutter/material.dart';

class MyAppFour extends StatelessWidget {
  const MyAppFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePageFour(),
    );
  }
}

class MyHomePageFour extends StatelessWidget {
  const MyHomePageFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 280,
            width: 120,
            color: Colors.orange,
            child: FittedBox(
              fit: BoxFit.cover, // 작은 이미지를 크게 채우는 곳에 사용
              // 이미지를 네트워크로 불러오기 (100/100은 사이즈)
              child: Image.network("https://placeimg.com/100/100/any"),
            ),
          ),
          // 큰 이미지를 작은 곳에 맞추려면 container의 크기로 조절한다.
          Container(
              height: 200,
              width: 200,
              // 이미지를 네트워크로 불러오기 (640/480은 사이즈)
              child: Image.network("https://placeimg.com/640/480/any")),
        ],
      )),
    );
  }
}
