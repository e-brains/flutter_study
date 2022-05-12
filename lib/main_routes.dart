
import 'package:dear_flutter_three/screens/feed_page.dart';
import 'package:dear_flutter_three/screens/home_page.dart';
import 'package:dear_flutter_three/screens/sub_page.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyAppUiFour());
// }

class MyAppUiFour extends StatelessWidget {
  const MyAppUiFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     initialRoute: "/home",
      routes: {
       "/home":(context) => UiHomePage(),
        "/sub":(context) => SubPage(),
        "/feed":(context) => FeedPage(),
      },
    );
  }
}


