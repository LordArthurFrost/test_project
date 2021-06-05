import 'package:flutter/material.dart';

void main() {
  runApp(Container(
      padding: EdgeInsets.all(30),
      color: Colors.teal,
      child: Row(
        textDirection: TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.start,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          Expanded(
              child: Text(
                  'Чрез несколько дней после отъезда Анатоля, Пьер получил записку от князя Андрея, извещавшего '
                  'его о своем приезде и просившего Пьера заехать к нему.',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 26)))
        ],
      )));
}
