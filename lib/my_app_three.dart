import 'package:flutter/material.dart';

class MyHomePageThree extends StatefulWidget {
  const MyHomePageThree({Key? key}) : super(key: key);

  @override
  State<MyHomePageThree> createState() => _MyHomePageThreeState();
}

class _MyHomePageThreeState extends State<MyHomePageThree>
    with SingleTickerProviderStateMixin {

  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat(reverse: true); // repeat : 반복  reverse : 역으로 동작하는 것

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;

    // 두번째 , PositionedTransition
    late final Animation<RelativeRect> _animation2 = RelativeRectTween(
      begin: RelativeRect.fromLTRB(0, 0, 0, height),
      end: RelativeRect.fromLTRB(0, 0, 0, height/2),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    return Scaffold(
      // Scaffold: 발판
      // PositionedTransition은 Stack에서 사용할 수 있다고 함
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          PositionedTransition(
            rect: _animation2,
            child: Container(
              height: 100,
              width:  100,
              color: Colors.orange,
            ),
          )
        ],
      ),
    );
  }
}
