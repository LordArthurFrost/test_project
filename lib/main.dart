import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new MyWidget());
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size =
        MediaQuery.of(context).size.width > MediaQuery.of(context).size.height
            ? MediaQuery.of(context).size.height
            : MediaQuery.of(context).size.width;
    return new Scaffold(
      body: Align(
          alignment: Alignment.center,
          child: Container(
              alignment: Alignment.center,
              height: (size),
              width: (size),
              color: HexColor('#4bad4f'),
              child: Container(
                  alignment: Alignment.center,
                  color: HexColor('#9a27ae'),
                  margin: EdgeInsets.all(50),
                  child: Container(
                      alignment: Alignment.center,
                      color: HexColor('#2194f0'),
                      margin: EdgeInsets.all(50))))),
      drawer: Drawer(
          child: Container(
              alignment: Alignment.center,
              color: HexColor('#03a7f2'),
              child: Text(
                "I am a Drawer!",
                textAlign: TextAlign.center,
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 22),
              ))),
      appBar: AppBar(title: const Text("Welcome to Flutter")),
    );
  }
}
