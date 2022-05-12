import 'package:flutter/material.dart';

class MyAppOne extends StatelessWidget {
  const MyAppOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          title: const Text("Credit Card",),
          centerTitle: true,
          actions: [
            Row(
              children: const [
                Icon(Icons.shopping_cart),
              ],
            ),
          ],
        ),
        body: const MyFirstPage(),
      ),
    );
  }
}

class MyFirstPage extends StatelessWidget {
  const MyFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // UI의 전체적인 구조가 컨텐츠를 위에서 아래로 나열하는 형태면
    // Column을 사용하면 된다.
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20,),
          Image.asset(
            "assets/page2.png",
            height: 300,
            width: 400,
          ),
          const SizedBox(height: 20,),
          const Text(
            "Needlework",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
          ),
          const Text(
            "is voguish",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 20,),
          const Text(
            "Modern flat design isometric ",
            style: TextStyle(fontWeight: FontWeight.w300, color: Colors.black45),
          ),
          const Text("illustration on various topics.",
            style: TextStyle(fontWeight: FontWeight.w300, color: Colors.black45),),
          const SizedBox(height: 20,),
          TextButton(
            style: TextButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              primary: Colors.white,
              backgroundColor: Colors.grey[700],
            ),
            onPressed: () {
              debugPrint("버튼이 클릭됨");
            },
            child: const Text(
              "Get Started",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}