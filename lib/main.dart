import 'package:flutter/material.dart';
import 'package:getstarted/Announcement.dart';
import 'package:getstarted/WalkthroughScreen.dart';
import 'package:getstarted/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "slider",
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/walkthrough': (BuildContext context) => WalkthroughScreen(),
        '/HomeScreen': (BuildContext context) => HomeScreen(),
        '/Announcement': (BuildContext context) => Announcement(),
      },
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.grey,
      ),
      home: WalkthroughScreen(),
    );
  }
}
