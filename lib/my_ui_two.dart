import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:fluttericon/typicons_icons.dart';

class MyAppTwo extends StatelessWidget {
  const MyAppTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          // 배경색
          foregroundColor: Colors.black,
          // 글자나 아이콘 색
          elevation: 0,
          leading: const Icon(Icons.arrow_back),
          title: const Text(
            "Credit Card",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 25,
              fontFamily: "CookieRun",
            ),
          ),
          centerTitle: true,
          actions: [
            Row(
              children: const [
                //Icon(Icons.shopping_cart),
                Icon(Typicons.star),
              ],
            ),
          ],
        ),
        body: const MyAppPage(),
      ),
    );
  }
}

class MyAppPage extends StatelessWidget {
  const MyAppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // UI의 전체적인 구조가 컨텐츠를 위에서 아래로 나열하는 형태면
    // Column을 사용하면 된다.
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // 이미지의 모서리를 자른다.
          /* ClipRRect(
            child: Image.asset(
              "assets/credit_card.png",
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),

          // 이미지를 타원형으로 자른다.
          ClipOval(
            child: Image.asset(
              "assets/credit_card.png",
            ),
          ),*/

          // 사진을 네모로 자르고 싶을 때
          /* ClipRect(
            child: Align(
              child: Image.asset(
                "assets/credit_card.png",
              ),
              heightFactor: 0.5, // 가운데 중심으로 위아래 50% 잘라냄
              alignment: Alignment.topCenter, // 위를 중심으로 50% 남기고 잘라냄
            ),
          ),
          SizedBox(height: 20,),*/

          // 내 마음대로 자르고 싶을 때
          // ClipPath()는 CustomClipper<Path>클래스를 상속받아서
          // 커스텀 위젯을 하나 만들어야 한다.
          /* ClipPath(
            child: Image.asset(
              "assets/credit_card.png",
              fit: BoxFit.fill,  // box에 이미지가 꽉차 있어야 제대로 그림
            ),
            clipper: MyClipper(),
          ),*/

          // 외부 라이브러리 이용하기
          ClipPath(
            clipper: StarClipper(8),
            child: Image.asset(
              "assets/credit_card.png",
              fit: BoxFit.fill, // box에 이미지가 꽉차 있어야 제대로 그림
              height: 450,
            ),
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    // x,y좌표 0,0 으로 이동 (이미지 제일 왼쪽 윗 모서리)
    path.moveTo(0, 0);
    // 이미지의 넓이 값, 높이 0 : 시작점에서 오른쪽 윗 모서리로 긋는다.
    path.lineTo(size.width, 0.0);
    // 이미지의 넓이 값, 이미지의 높이 값 :
    // 이미지의 오른쪽 윗쪽 모서리에서 오른쪽 아래 모서리로 높이 값 만큼 이동
    // 결국 대각선으로 잘린 형태가 됨
    path.lineTo(size.width, size.height);
    // 나머지는 맘대로 그려보자.
    path.lineTo(size.width / 2, size.height - 50);
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width - 50, size.height - 50);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true; // true이면 화면에 바로 반영되서 그린다.
  }
}
