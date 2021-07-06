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
              margin: EdgeInsets.all(50))
      )
  )
  );
}
