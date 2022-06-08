import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class MyHomePageEight extends StatefulWidget {
  const MyHomePageEight({Key? key}) : super(key: key);

  @override
  State<MyHomePageEight> createState() => _MyHomePageEightState();
}

class _MyHomePageEightState extends State<MyHomePageEight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 250.0,
          child: AnimatedTextKit(
            // FadeAnimatedText  와 ScaleAnimatedText 을 섞어 쓸 수 있다.
            // 순차적으로 보여준다
            animatedTexts: [
              FadeAnimatedText(
                '1 FadeAnimated',
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              ScaleAnimatedText(
                '2 ScaleAnimated',
                textStyle: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Canterbury',
                ),
              ),
            ],
            onTap: () {
              print("Tap Event");
            },
            //totalRepeatCount: 10,    // 10회 반복
            repeatForever: true,       // 무한 반복
            pause: const Duration(seconds: 1),      // 1초 간격
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),
        ),
      ),
    );
  }
}
