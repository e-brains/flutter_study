import 'dart:math';

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

class _MyHomePageThreeState extends State<MyHomePageThree>
    with TickerProviderStateMixin {
  //  late : null을 허용하지 않지만 초기화를 늦추고 싶을 때 사용
  //  late 역시 코드 작성 시 초기화 전 해당 변수를 사용한다면 에러가 발생함.
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat(reverse: true);

  // logo 애니메이션
  late final Animation<double> _animation1 = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  // 글자 애니메이션
  late final Animation<double> _animation2 = Tween(
    begin: 0.0,
    end: 1.0,
  ).animate(_controller) ;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.white,
            height: 80,
            child: FadeTransition(
              opacity: _animation1,
              child: const Padding(
                  padding: EdgeInsets.all(8), child: FlutterLogo()),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            color: Colors.orange,
            height: 80,
            child: FadeTransition(
              opacity: _animation2,
              child: Text("안녕하세요", style: TextStyle(fontSize: 24),),
            ),
          )
        ],
      ),
    );
  }
}
