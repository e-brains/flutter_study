import 'package:flutter/material.dart';

class MyAppSeven extends StatelessWidget {
  const MyAppSeven({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePageSeven(),
    );
  }
}

class MyHomePageSeven extends StatefulWidget {
  const MyHomePageSeven({Key? key}) : super(key: key);

  @override
  State<MyHomePageSeven> createState() => _MyHomePageSevenState();
}

class _MyHomePageSevenState extends State<MyHomePageSeven> {
  // 먼저 list generate function을 이용해서 30개의 list 아이템을 생성한다.
  final List<String> _items = List.generate(20, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // ListView.builder를 이용해서 위에서 만든 item list를 렌더링
        body: ListView.builder(
          itemCount: _items.length,
          //itemBuilder: (context, index) => buildCard(index), // Card 위젯 적용
          itemBuilder: (context, index) =>
              buildDismissible(index), // Dismissible 위젯 적용
        ),
      ),
    );
  }

  // 아이템을 좌우로 드래그하여 리스트에서 사라지게 함
  Dismissible buildDismissible(int index) {
    return Dismissible(
      key: Key(_items[index]),
      onDismissed: (direction) {
        if (direction == DismissDirection.endToStart) {
          // 우측 -> 좌측으로 드래그
          debugPrint("DismissDirection.endToStart");
          // 액션이 일어나고 다시 그려주지 않고 hot reload 하면 index 오류 일어남
          setState(() {
            _items.removeAt(index);
          });
        }
        if (direction == DismissDirection.startToEnd) {
          // 좌측 -> 우측으로 드래그
          debugPrint("DismissDirection.startToEnd");
          setState(() {
            _items.removeAt(index);
          });
        }
      },
      background: Container(
        // 위젯이 와야되서 컨테이너 사용
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: Colors.green,
        alignment: Alignment.centerLeft,
        child: const Icon(
          Icons.save,
          size: 36,
          color: Colors.white,
        ),
      ),
      secondaryBackground: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: Colors.red,
        alignment: Alignment.centerRight,
        child: const Icon(
          Icons.delete,
          size: 36,
          color: Colors.white,
        ),
      ),
      child: Card(
        margin: const EdgeInsets.all(8),
        elevation: 8,
        child: ListTile(
          leading: CircleAvatar(
            child: Text('${_items[index].split(' ')[1]}'),
          ),
          title: Text(
            _items[index],
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }

  // 리스트로 나열하기 위한 카드
  Card buildCard(int index) {
    return Card(
      margin: const EdgeInsets.all(8),
      elevation: 8,
      child: ListTile(
        leading: CircleAvatar(
          child: Text('${_items[index].split(' ')[1]}'),
        ),
        title: Text(
          _items[index],
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
