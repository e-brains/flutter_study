import 'package:flutter/material.dart';

class MyAppFive extends StatelessWidget {
  const MyAppFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePageFive(),
    );
  }
}

class MyHomePageFive extends StatefulWidget {
  const MyHomePageFive({Key? key}) : super(key: key);

  @override
  State<MyHomePageFive> createState() => _MyHomePageFiveState();
}

class _MyHomePageFiveState extends State<MyHomePageFive>
    with SingleTickerProviderStateMixin {
  // late : null을 허용하지 않지만 초기화를 늦추고 싶을 때 사용
  // late 역시 코드 작성 시 초기화 전 해당 변수를 사용한다면 에러가 발생함.
  // this는 객체 생성전에는 사용할 수 없으나 SingleTickerProviderStateMixin을
  // 사용하면 인식한다.
  late final TabController _tabController =
      TabController(length: 2, vsync: this);

  // 또는 initState()함수를 이용하여 초기화(객체가 생성되므로)하는
  // 함수 body에 사용하면 인식한다.
  // late final TabController _tabController;
  // @override
  // void initState() {
  //   super.initState();
  //   _tabController =
  //       TabController(length: 2, vsync: this);
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Container로 위치를 잡아준다.
          Container(
            color: Colors.red,
            height: 350,
          ),
          TabBar(
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.black,
            controller: _tabController,
            tabs: const [
              Tab(icon: Icon(Icons.access_alarm), text: "사진1",),
              Tab(icon: Icon(Icons.access_alarm), child: Text("사진2"),),
            ],
          ),
          // Container높이 이외에 TabBarView 높이를 줘야 하는데 이때에는
          // 정확한 수를 입력하기 어려기 때문에 Expanded를 사용
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Image.network("https://placeimg.com/480/280/any"),
                Image.network("https://placeimg.com/680/420/any"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
