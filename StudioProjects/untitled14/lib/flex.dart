import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class flex extends StatelessWidget {
  const flex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Row(children: [
        Container(
          width: 30,
        height: 250,
          color:Colors.yellowAccent,
      ),
        Flexible(
          fit: FlexFit.tight,
          child: Container(
            width:30,
            height: 200,
            color:Colors.pink,
            child: Text("nehaljvjhvuhvuyvuvuvuyvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv"),
          ),
        )
,
      Container(
        width: 30,

        height: 250,
          color:Colors.blue,
        ),
      ],)
    );
  }
}
