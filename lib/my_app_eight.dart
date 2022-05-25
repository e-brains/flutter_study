import 'package:flutter/material.dart';

class MyAppNine extends StatelessWidget {
  const MyAppNine({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePageNine(),
    );
  }
}

class MyHomePageNine extends StatefulWidget {
  const MyHomePageNine({Key? key}) : super(key: key);

  @override
  State<MyHomePageNine> createState() => _MyHomePageNineState();
}

// StatefulWidget은 상태를 가지는 위젯이다.
// 데이터 변경이 일어나면 UI가 변경된다.
class _MyHomePageNineState extends State<MyHomePageNine> {
  // 드래그 할 위젯 ( 드래그 전 베이스 그림 )
  Widget remainBox = Container(
    width: 200,
    height: 200,
    color: Colors.blue,
  );

  // 타겟이 될 위젯
  Widget targetBox = Container(
    width: 200,
    height: 200,
    color: Colors.orange,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            // 사이를 일정 비율로 띄어 준다.
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              DragTarget<Container>( // data로 설정된 위젯이 Container라는 것을 알려준다.
                onWillAccept: (data) => true, // 드래그 중인 위젯을 받아 들일 준비됨
                onAccept: (data){
                  // 리턴할게 없으니 익명함수로 작성한다.
                  debugPrint("Accept 됨 !!!");
                  // 드래그 중인 위젯을 사라지게 하기 위해
                  setState(() {
                    remainBox = Container(
                      width: 200,
                      height: 200,
                    );
                    targetBox = data; // 타겟 박스를 베이스 컨테이너로 변경
                  });
                },
                builder: (context, candidateData, rejectedData) => targetBox,
              ),
              Draggable<Container>( // data로 설정할 위젯이 Container라는 것을 알려준다.
                // 드래그할 위젯을 data로 설정한다.
                data: Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                ),
                // 드래그가 끝났을 때
                onDragEnd: (details) {
                  setState(() {
                    // 그림을 다시 그려줌 ( 옮겨지는 것 처럼 보이기 위해)
                    remainBox = Container(
                      width: 200,
                      height: 200,
                    );
                  });
                },
                // 바닥에 남아 있는 베이스 그림 잔상 (색을 없애준다.)
                childWhenDragging: Container(
                  width: 200,
                  height: 200,
                ),
                // 움직일 그림
                feedback: Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                ),
                // 드래그 전 베이스 그림
                child: remainBox,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
