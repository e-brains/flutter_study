import 'package:flutter/material.dart';

class MyAppThree extends StatefulWidget {
  const MyAppThree({Key? key}) : super(key: key);

  @override
  State<MyAppThree> createState() => _MyAppThreeState();
}

class _MyAppThreeState extends State<MyAppThree> {
  var isCheck = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          title: const Text("Credit Card"),
          ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: (){
                  debugPrint("인증하기 활성화 버튼 clicked");
                  // setState 함수내에 있는 데이터와 연관된 위젯 및
                  // 그 자식 위젯은 다시 그린다.
                  setState(() {
                    isCheck = false;
                  });
                },
                child: const Text("인증하기 버튼 활성화")
            ),
            ElevatedButton(
                onPressed: (){
                  debugPrint("인증하기 비활성화 버튼 clicked");
                  setState(() {
                    isCheck = true;
                  });
                },
                child: const Text("인증하기 버튼 비활성화")
            ),
            AbsorbPointer(
              absorbing: isCheck, // true 비활성화, false 활성화
              child: ElevatedButton(
                onPressed: () {
                  debugPrint("인증하기 clicked");
                },
                child: const Text("인증하기"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


