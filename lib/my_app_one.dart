import 'package:flutter/material.dart';

class MyHomePageOne extends StatefulWidget {
  const MyHomePageOne({Key? key}) : super(key: key);

  @override
  State<MyHomePageOne> createState() => _MyHomePageOneState();
}

class _MyHomePageOneState extends State<MyHomePageOne> {

  late Size size;
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    // 미디어의 크기를 받아온다.
    size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        // 버튼을 만들어서 isOpen의 값을 조정한다.
        actions: [
          InkWell(
            child: Icon(Icons.compare_arrows),
            onTap: (){
              setState(() {
                isOpen = !isOpen;  // 토글 버튼으로 만듬
              });
            },
          )
        ],
      ),
      body: Stack(   // 화면에서 위젯을 겹쳐서 표현하기 위해 사용
        children: [
          Center(
            child: Text("Hello"),
          ),
          AnimatedContainer(
            curve: Curves.easeInOutBack, // 움직이는 형태 설정
          duration: Duration(seconds: 2),
            height: double.infinity,  // 최대 크기
            width: size.width * (2/3),  // 화면에서 차지하는 가로사이즈
            color: Colors.blue,
            // x축의 값만 조정해서 가로로 움직이도록 함
            // isOpen이 false이면 size.width는 최대 크기 이기 때문에 화면의
            // 맨 오른쪽으로 가서 숨어버림 화면에 안보임
            // true이면 좌측에서 1/3 자리에 위치
            transform: Matrix4.translationValues(isOpen?size.width*(1/3):size.width, 0, 0),
          ),
        ],
      ),
    );
  }
}
