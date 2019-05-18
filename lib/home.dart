import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "login",
      home: Scaffold(
          appBar: AppBar(
            title: Text("home page"),
          ),
          body: Center(
            child: Container(
              child: Text('hello world'),
            ),
          )),
    );
  }
}
