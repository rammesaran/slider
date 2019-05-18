import 'package:flutter/material.dart';

class Announcement extends StatefulWidget {
  @override
  _AnnouncementState createState() => _AnnouncementState();
}

class _AnnouncementState extends State<Announcement> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Announcement",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Announcement"),
          actions: <Widget>[
            Icon(Icons.search),
          ],
          leading: Icon(Icons.chevron_left),
        ),
        body: Center(
          child: Text("list of announcement"),
        ),
      ),
    );
  }
}
