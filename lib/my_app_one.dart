import 'dart:ui';
import 'package:flutter/material.dart';

class MyAppOne extends StatelessWidget {
  const MyAppOne({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePageOne(),
    );
  }
}

class MyHomePageOne extends StatelessWidget {
  const MyHomePageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BackdropFilter"),
      ),
      body: Stack(
        // 이미지에 모자이크 처리를 하고 싶을때
        // 스택으로 쌓아서 처리하면 된다.
        children: [
          Image.asset(
            // 이미지 fit 속성을 fill로 주고
            // 세로 가로를 infinity를 주면 그림을
            // 최대한 확장하면서 화면을 꽉 채운다.
            "images/river.png",
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
          // 두번째 화면 위젯은 스택에 쌓일때 직전의 화면의 크기에 맞춰서
          // 생성된다.
          // BackdropFilter로 블로어 처리할 수 있다. 이때 특정 부위를
          // 블로어 처리 하려면 ClipRect를 이용하여 자른다.
          // ClipRect을 사용하면 자식인 BackdropFilter를 그 자식은
          // Container의 크기 만큼 잘라낸다.
          // Positioned로 잘린 BackdropFilter의 위치를 잡아 준다.
          // 결과는 나무 윗부분을 가린다.
          Positioned(
            left: 220,
            right: 30,
            top: 50,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 9,
                  sigmaY: 9,
                ),
                child: Container(
                  width: 250,
                  height: 200,
                  color: Colors.black.withOpacity(0.3), //투명도
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}