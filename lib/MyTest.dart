import 'package:flutter/material.dart';

class MyTestPage extends StatelessWidget {
  const MyTestPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("MyTestPage"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         InkWell(
           onTap: (){
             debugPrint("InkWell로 만든 커스텀 버튼");
           },
           child: Container(
             child: const Text("Custom Button"),
             color: Colors.green,             
           ),
         ),
        ],
      ),
    ));
  }
}
