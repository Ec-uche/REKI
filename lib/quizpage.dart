import 'dart:convert';
import 'dart:ui';
//import 'dart:js';
import 'package:flutter/material.dart';

class getjson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString("assets/python.json"),
      builder: (context, snapshot) {
        var mydata = json.decode(snapshot.data.toString());
        if (mydata == null) {
          return Scaffold(
            body: Center(
              child: Text(
                "Loading",
              ),
            ),
          );
        } else {
          return quizpage();
        }
      },
    );
  }
}

class quizpage extends StatefulWidget {
  @override
  _quizpageState createState() => _quizpageState();
}

class _quizpageState extends State<quizpage> {
  Widget choicebutton(String option) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          option,
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Alike",
            fontSize: 16.0,
          ),
        ),
        color: Colors.indigo,
        splashColor: Colors.indigo[700],
        highlightColor: Colors.indigo[700],
        minWidth: 200.0,
        height: 45.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              "1: This is where text will be displayed",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                fontFamily: "Quando",
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
          ),
        ),
        Expanded(
          flex: 6,
          child: Container(
            child: Column(children: <Widget>[
              choicebutton("Option 1"),
              choicebutton("option 2"),
              choicebutton("Option 3"),
            ]),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
          ),
        ),
      ],
    ));
  }
}
