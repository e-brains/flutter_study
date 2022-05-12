import 'package:dear_flutter_one/MyTest.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyTestPage());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // 루프를 돌면서 보여주기 위해 배열을 만듬
    final List<int> colorArray = [200,400,600,800,900];
    return MaterialApp(
      debugShowCheckedModeBanner: false, // debug 표시 없앤다.
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.orange,
          appBar: AppBar(
            title: const Text("App Bar"),
            backgroundColor: Colors.redAccent,
          ),
          body: ListView.builder(
            itemCount: colorArray.length,
            itemBuilder: (BuildContext context, int index) {
              return
                Column(
                children: [
                  ListTile(
                    title: const Text("Title"),
                    subtitle: const Text("Sub Title"),
                    leading: const Icon(Icons.home),
                    tileColor: Colors.orange[colorArray[index]],
                    onTap: (){
                      debugPrint("$index 번째가 선택됨");
                    },
                  ),
                  // ListView.separated()를 사용하면 가로줄이 있는 ListView를
                  // 생성할 수 있으나 Container를 사용해서 나만의 줄을 생성할 수도 있다.
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.black,
                        ),
                      ),
                      const Icon(Icons.star),
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}


