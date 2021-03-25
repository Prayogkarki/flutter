import 'package:flutter/material.dart';
import '../global.dart';

class IntrayTodo extends StatelessWidget {
  final String title;
  final String keyValue;

  IntrayTodo({this.title,this.keyValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key(keyValue),
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.only(bottom:5),
      height: 100.0,

      decoration: BoxDecoration(
        color: redColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          new BoxShadow(
          color: Colors.black.withOpacity(0.5),
          blurRadius: 10.0,
        ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Radio(),

          Column(
            children: <Widget>[
              Text(
                title,
                style: darkTodoTitle,
              ),
            ],
          ),
        ],
      ),

    );
  }
}
