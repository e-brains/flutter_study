import 'package:flutter/material.dart';

class MyAppFour extends StatelessWidget {
  const MyAppFour({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePageFour(),
    );
  }
}

class MyHomePageFour extends StatefulWidget {
  const MyHomePageFour({Key? key}) : super(key: key);

  @override
  State<MyHomePageFour> createState() => _MyHomePageFourState();
}

class _MyHomePageFourState extends State<MyHomePageFour> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Card View"),
        ),
        body: Card(
          color: Colors.orange,
          child: InkWell(
            splashColor: Colors.blue, // 컬러가 퍼지는 모습이 적용
            onTap: () {
              debugPrint("Card clicked !!!");
            },
            child: Column(
              mainAxisSize: MainAxisSize.min, // 세로 크기를 최소로 (자식 크기 까지)
              children: [
                const ListTile(
                  leading: Icon(Icons.album),
                  title: Text("경기도, 자율협력주행버스"),
                  subtitle: Text("6월부터 '시범운행', 9월부터 판교테크노밸리 일반도로에 투입"),
                ),
                Row(
                  // mainAxisAlignment: , // Row의 기본방향 (왼쪽 -> 오른쪽 수평 방향)
                  // crossAxisAlignment: , // Row의 기본방향의 수직방향 (위쪽 -> 아래쪽)
                  mainAxisAlignment: MainAxisAlignment.end, // 오른쪽 끝으로
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: const Text(
                        "Card Click!",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
