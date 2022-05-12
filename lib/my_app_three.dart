import 'package:flutter/material.dart';

class MyAppThree extends StatelessWidget {
  const MyAppThree({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePageThree(),
    );
  }
}

class MyHomePageThree extends StatefulWidget {
  const MyHomePageThree({Key? key}) : super(key: key);
  @override
  State<MyHomePageThree> createState() => _MyHomePageThreeState();
}

class _MyHomePageThreeState extends State<MyHomePageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("showModalBottomSheet"),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => _buildContainer(),
          );
        },
      ),
    );
  }

  Widget _buildContainer() {

    debugPrint("inset = ${MediaQuery.of(context).viewInsets.bottom}");
    debugPrint("padding = ${MediaQuery.of(context).viewPadding.bottom}");

    return BottomSheet(
      onClosing: () {
        debugPrint("Closed");
      },
      builder: (context) => Container(
        // padding : 외곽선으로 부터 안쪽으로 여백
        // viewInsets : 시스템 UI, 장치의 키보드에 의해 가려지는 영역
        // viewPadding = viewInsets + padding
        // padding = viewPadding - viewInsets

        // TextField를 터치하여 키보드가 올라 올때 MediaQuery로 inset을
        // 찍어보면 키보드가 올라오면서 그린 영역이 inset 값으로 잡힌다.
        // padding 값에 MediaQuery 에서 읽은 값을 사용하면
        // 키보드가 올라 올때 그 키보드 영역만큼 패딩으로 잡혀서 딸려 올라가기
        // 때문에 TextField가 키보드에 덮여 버리는 것을 막을 수 있다.
        // 다만 TextField 를 container로 감싸서 내가 컨트롤 가능한 크기가
        // 잡히도록 해야 한다.
        // 결과적으로
        // 플로우팅 버튼을 클릭하는 순간 오렌지색 컨테이너가 잠깐 보이고 그 영역을 키보드가
        // 차지하고 빨간 컨테이너는 키보드에 밀려서 올라는 모습을 볼 수 있다.
        // 패딩은 외곽에서 부터 안쪽으로 패딩이 생기는 것이므로 오렌식색 컨테이너의
        // 아래쪽 으로 부터 패딩이 생겨서 안쪽에 빨강색 컨테이너가 밀려 올라가는 것이다.
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        color: Colors.orange,
        child: Container(
            child: TextField(),
          color: Colors.red,
          height: 200,
        ), // 텍스트를 입력할 수 있는 키보드가 나온다.
      ),
    );
  }
}
