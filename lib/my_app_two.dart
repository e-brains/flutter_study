import 'package:flutter/material.dart';

class MyHomePageTwo extends StatefulWidget {
  const MyHomePageTwo({Key? key}) : super(key: key);

  @override
  State<MyHomePageTwo> createState() => _MyHomePageTwoState();
}

class _MyHomePageTwoState extends State<MyHomePageTwo> with SingleTickerProviderStateMixin{
 
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat(reverse: true); // repeat : 반복  reverse : 역으로 동작하는 것

  // begin과 end 크기 사이로 작동
  late final Animation<double> _animation = Tween(
    begin: 0.0,
    end: 1.0,
  ).animate(_controller) ;

  @override
  Widget build(BuildContext context) {

    return Scaffold(  // Scaffold: 발판
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
