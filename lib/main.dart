import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(Container(
    alignment: Alignment.center,
    color: HexColor('#4bad4f'),
    child: Container(
        alignment: Alignment.center,
        color: HexColor('#9a27ae'),
        margin: EdgeInsets.all(50),
        child: Container(
            alignment: Alignment.center,
            color: HexColor('#2194f0'),
            margin: EdgeInsets.all(50))),
  ));
}
/*
void main() {
  runApp(Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 40, bottom: 10, left: 20, right: 20),
      child: Stack(
        alignment: AlignmentDirectional.center,
        textDirection: TextDirection.ltr,
        children: <Widget>[
          Container(
            width: 240,
            height: 240,
            color: Colors.blueGrey,
          ),
          Container(
            width: 220,
            height: 220,
            color: Colors.black12,
          ),
          Text(
            "Flutter на metanit.com",
            textDirection: TextDirection.ltr,
            softWrap: true,
            style: TextStyle(fontSize: 20),
          ),
        ],
      )));
}
*/
