
import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppUiFive());
}

class MyAppUiFive extends StatelessWidget {
  const MyAppUiFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: const Text("AppBar"),
       ),
       body: Container(
         color: Colors.green,
         // 컨테이너는 자식이 있으면 자식의 크기에 맞춰지는데
         // alignment속성을 사용하면 부모 크기를 따른다.
         alignment: Alignment.center,
         // Container의 alignment 속성을 가지고 있지 않은 경우
         // 전체 크기를 잡으면서 자식위젯의 위치를 잡을 수 있도록
         // 해주려면 Align 위젯을 사용하면 된다.
         child: const Align(
             child:
             Text("Align 위젯 테스트"),
           alignment: Alignment.bottomCenter,
         ),
       ),
     ),
    );
  }
}


