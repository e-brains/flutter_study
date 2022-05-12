import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppUiTwo extends StatelessWidget {
  const MyAppUiTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCupertinoApp(),
    );
  }
}

class MyCupertinoApp extends StatefulWidget {
  const MyCupertinoApp({Key? key}) : super(key: key);

  @override
  State<MyCupertinoApp> createState() => _MyCupertinoAppState();
}

class _MyCupertinoAppState extends State<MyCupertinoApp> {
  @override
  Widget build(BuildContext context) {
    // 일반 Scaffold 에 만들어도 동일하게 동작함
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          onPressed: () {
            showCupertinoDialog(
              context: context,
              builder: (BuildContext context) => CupertinoAlertDialog(
                title: const Text("AlertDialog"),
                content: const Text('Proceed with destructive action?',
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
}
