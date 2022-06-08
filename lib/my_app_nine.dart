import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class MyHomePageNine extends StatelessWidget {
  const MyHomePageNine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            FadeInLeft(child: const Square(), duration: Duration(seconds: 2),),
            FadeInUp(child: const Square(), duration: Duration(seconds: 2),),
            FadeInDown(child: const Square(), duration: Duration(seconds: 2),),
            FadeInRight(child: const Square(), duration: Duration(seconds: 2),),
            SlideInDown(child: const Square(), duration: Duration(seconds: 2),),
          ],
        ),
      ),
    );
  }
}

class Square extends StatelessWidget {
  const Square({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: Colors.blueAccent,
    );
  }
}
