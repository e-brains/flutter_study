import 'package:flutter/material.dart';

class MyAppFive extends StatelessWidget {
  const MyAppFive({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePageFive(),
    );
  }
}

class MyHomePageFive extends StatefulWidget {
  const MyHomePageFive({Key? key}) : super(key: key);

  @override
  State<MyHomePageFive> createState() => _MyHomePageFiveState();
}

class _MyHomePageFiveState extends State<MyHomePageFive> {
  bool isLoading = true;

  // 앱 구동 시 최초에 실행 1번 실행되기 때문에
  // 서버에서 데이터를 다운로드 받을때 사용하면 좋다.
  @override
  void initState() {
    debugPrint("initState()");
    Future.delayed(
      const Duration(seconds: 3),
      // 3초가 지나면 함수 실행
      () {
        debugPrint("테스트를 위한 다운로드 완료");
        // 로딩이 끝났으므로 다시 그려주면서 false 로 셋팅
        setState(() {
          isLoading = false;
          // isLoading 값이 바뀌면 관련 위젯들만 다시 그려줌
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Card View"),
        ),
        body: Center(
          // isLoading이 true이면 (데이터 로딩 중이면 Progress)
          child: isLoading
              ? const CircularProgressIndicator(
                  backgroundColor: Colors.red,
                  strokeWidth: 5,
                )
              : const Text("다운로드 완료됨 . 그림 그리다"),
        ),
      ),
    );
  }
}
