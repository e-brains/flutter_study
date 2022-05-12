import 'package:flutter/material.dart';

class MyAppFour extends StatefulWidget {
  const MyAppFour({Key? key}) : super(key: key);

  @override
  State<MyAppFour> createState() => _MyAppFourState();
}

class _MyAppFourState extends State<MyAppFour> {
  var isCheck = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(200),
                      bottomRight: Radius.circular(200),
                    ),
                    child: Container(
                      // 글자 정렬 위치를 가운데로 주면 텍스트 위젯 위주로 잡현던 크기가
                      // 컨테이너 위주 크기가 되어 정상적으로 그린다.
                      alignment: const Alignment(0, -0.5),
                      color: Colors.blue,
                      height: 350,
                      child: const Text(
                        "Stack & Positoned",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                        ),
                      ),
                    ),
                  ),
                  // TextFormField를 원하는 위치에 놓기 위해 넣음
                  Expanded(
                    child: SizedBox(),
                  ),
                ],
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                height: 200,
                // 키보드가 나와서 자판을 칠수 있다
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      // hintText만 다른 동일한 TextFormField를 생성하기 때문에
                      // 함수로 빼서 사용함
                      buildTextFormField("username"),
                      SizedBox(height: 10,),
                      buildTextFormField("password"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

TextFormField buildTextFormField(String hint) {
  return TextFormField(
    decoration: InputDecoration(
      hintText: hint,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 1,
          color: Colors.black,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 1,
          color: Colors.black,
        ),
      ),
      fillColor: Colors.grey,
      filled: true, // true 이면 색을 채워준다.
    ),
  );
}
