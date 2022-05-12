import 'dart:ui';
import 'package:dear_flutter_four/screens/page1.dart';
import 'package:dear_flutter_four/screens/page2.dart';
import 'package:dear_flutter_four/screens/page3.dart';
import 'package:dear_flutter_four/screens/page4.dart';
import 'package:dear_flutter_four/screens/page5.dart';
import 'package:flutter/material.dart';

class MyAppTwo extends StatelessWidget {
  const MyAppTwo({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePageTwo(),
    );
  }
}

class MyHomePageTwo extends StatefulWidget {
  const MyHomePageTwo({Key? key}) : super(key: key);

  @override
  State<MyHomePageTwo> createState() => _MyHomePageTwoState();
}
// 변수를 이용해서 BottomNavigationBar의 선택 아이템을 핸들링하기 위해서
// StatefulWidget 으로 만듬
class _MyHomePageTwoState extends State<MyHomePageTwo> {

  var _selectedIndex = 0;  // _언더스코어 붙이면 private 접근자와 동일

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomNavigationBar"),
      ),
      // BottomNavigationBar에서 선택된 아이템 별로 액션을 주기 위해
      // IndexedStack 클래스를 사용한다.
      body: IndexedStack(
        index: _selectedIndex, // 바에서 선택한 인덱스 값이 할당됨
        // index값에 따라서 아래 children의 위젯이 인덱스 값에 따라서 선택됨
        // children: [
        //   Container(color: Colors.red),  // index 0
        //   Container(color: Colors.orange), // index 1
        //   Container(color: Colors.amberAccent), // index 2
        //   Container(color: Colors.green),  // index 3
        //   Container(color: Colors.blue),  // index 4
        // ],
        // 페이지 이동으로 응용해도 됨
        // Navigator는 stack에 화면을 계속 쌓아가는 것이라면 IndexedStack은
        // 한 화면(Scaffold) 안 에서 Stack과는 상관없이 해당 페이지를 벗어나지 않고
        // 다른 페이지를 내 영역안으로 불러와서 보여주는 것이다.
        children: [
          Page1(),
          Page2(),
          Page3(),
          Page4(),
          Page5(),
        ],

      ),
      bottomNavigationBar: BottomNavigationBar(
        // default는 아이템이 2개 이상 3개 이하 이어야 한다.
        // 4개 이상 보이려면 type 속성을 줘야 한다.
        type: BottomNavigationBarType.fixed, //fixed 4개 이상 보임
        currentIndex: _selectedIndex,

        // value 파라미터에 자동으로 클릭한 아이템의 인덱스를 넘겨준다.
        // 인덱스는 0부터임
        onTap: (value){
          // value의 값을 _selectedIndex에 담아서 currentIndex 값을
          // 화면에 적용하려면 그림을 다시 그려야 하는데 이때
          // setState() 함수를 사용해서 다시 그린다.
          // 단, 해당 위젯 이하로만 다시 그려진다. (BottomNavigationBar)
          setState(() {
            _selectedIndex = value; // 값을 할당한 뒤 다시 그린다.
          });
          debugPrint("value = ${value}");
          // 클릭 할때 마다 반전되는 모습을 볼 수 있다.
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: "shool",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
            label: "set",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            label: "여행",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
              label: "검색",
          ),
        ],
      ),
    );
  }
}
