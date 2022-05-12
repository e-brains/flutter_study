import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppUiOne extends StatelessWidget {
  const MyAppUiOne({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoButton(
          onPressed: () {
            showCupertinoDialog(
              context: context,
              builder: (BuildContext context) => CupertinoAlertDialog(
                title: const Text("AlertDialog"),
                content: const Text('바뀐것 맞아?',
                  style: TextStyle(
                    fontSize: 16,
                  ),),
                actions: [
                  CupertinoDialogAction(
                    child: const Text("NO"),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  CupertinoDialogAction(
                    child: const Text("YES"),
                    isDestructiveAction: true,
                    onPressed: (){
                      // Do something destructive.
                    },
                  ),
                ],
              ),
            );
          },
          child: const Text("CupertinoAlertDialog Open",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),),
          color: Colors.blue,
        ),
      ),
    );
  }

  AlertDialog buildAlertDialog(BuildContext context) {
    return const AlertDialog(
      title: Text("다이얼로그"),
      backgroundColor: Colors.red,
      actions: [
        Text("Approve"),
      ],
    );
  }
}


