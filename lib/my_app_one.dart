import 'package:flutter/material.dart';

class MyAppOne extends StatelessWidget {
  const MyAppOne({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePageOne(),
    );
  }
}

class MyHomePageOne extends StatefulWidget {
  const MyHomePageOne({Key? key}) : super(key: key);

  @override
  State<MyHomePageOne> createState() => _MyHomePageOneState();
}

// 각 패널의 상태값과 구분자를 가지고 개별적으로 동작할 수 있도록 한다.
class Item{
  int id;
  bool isState; // ExpansionPanelList 를 접엇다 폈다 하기 위한 상태값

  // alt+insert 하면 생성자 생성
  Item(this.id, this.isState);
}


class _MyHomePageOneState extends State<MyHomePageOne> {

  // 각 패널들이 개별적으로 펼쳐질 수 있도록 하기 위해
  var data = [Item(1,false), Item(2, false), Item(3, false)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyPageOne"),
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          // List가 컬렉션을 리턴하기 때문에 children에 [] 대신 사용할 수 있음
          children: List.generate(data.length, (index) =>  buildExpansionPanel(data[index])),
        ),
      ),
    );
  }

  ExpansionPanel buildExpansionPanel(Item item) {
    return ExpansionPanel(
            isExpanded: item.isState, // true이면 펼쳐지고 false이면 접혀 있다.
            headerBuilder: (context, isExpanded){
              // 드래그를 해서 날릴 수 있도록 Dismissable를 추가한다.
              return Dismissible(
                key: UniqueKey(), // 배열 요소의 변경이 일어나서 다시 그릴때 사용
                onDismissed: (direction){
                  setState(() {
                    // where함수는 값을 삭제해서 return해준다.그 값을 새로운 배열에 담을 수 있다.
                    // removeWhere는 배열에서 실제로 해당 값을 삭제한다.
                    // 현대 선택된 item의 id와 eliment(배열요소)의 id가 같으면 삭제
                    data.removeWhere((e) => e.id == item.id);
                  });
                },
                child: ListTile(
                  title: Text("item ${item.id} parent"),
                  onTap: (){
                    setState(() {
                      item.isState = !isExpanded; // 토글로 만든다.
                    });
                  },
                ),
              );
            },
            body: ListTile(
              title: Text("item child"),
            ),
          );
  }
}
