import 'package:flutter/material.dart';

import 'my_app_one.dart';

class MyAppTen extends StatelessWidget {
  const MyAppTen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePageTen(),
    );
  }
}

class MyHomePageTen extends StatefulWidget {
  const MyHomePageTen({Key? key}) : super(key: key);

  @override
  State<MyHomePageTen> createState() => _MyHomePageTenState();
}

// StatefulWidget은 상태를 가지는 위젯이다.
// 데이터 변경이 일어나면 UI가 변경된다.
class _MyHomePageTenState extends State<MyHomePageTen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("drawable"),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  "DrawerHeader : 제목",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              ListTile(
                leading: Icon(Icons.album),
                title: Text("앨범 111"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePageOne(),));
                },
              ),
              ListTile(
                leading: Icon(Icons.album),
                title: Text("앨범 222"),
              ),
            ],
          ),
        ),
        body: Builder(
          // SnackBar와 동일하게 of()가 scaffold 위로 scaffold를 찾는
          // 현상이 발생하기 때문에 Builder로 감싸서 of()가 Builder 위로
          // scaffold를 찾도록 한다.
          builder: (context) {
            return ElevatedButton(
              child: Text("이동"),
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
            );
          }
        ),
      ),
    );
  }
}
