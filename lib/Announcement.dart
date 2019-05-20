import 'package:flutter/material.dart';
import 'package:getstarted/details.dart';
import 'package:getstarted/users.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

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
      home: MyHomePageTeam(),
    );
  }
}

class MyHomePageTeam extends StatefulWidget {
  @override
  _MyHomePageTeam createState() => _MyHomePageTeam();
}

class _MyHomePageTeam extends State<MyHomePageTeam> {
  Future<List<Users>> _getUsers() async {
    var data = await http
        .get("http://www.json-generator.com/api/json/get/bPYXxrmZTS?indent=2");
    var jsonData = json.decode(data.body);
    List<Users> users = [];
    for (var u in jsonData) {
      Users user =
          Users(u["index"], u["favoriteFruit"], u["picture"], u["email"]);
      users.add(user);
    }
    print(users.length);
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('list of JSONS'),
        ),
        body: Container(
          child: FutureBuilder(
              future: _getUsers(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.data == null) {
                  return Container(
                    child: Center(
                      child: Text("Loading..."),
                    ),
                  );
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Text(snapshot.data[index].favoriteFruit),
                          leading: CircleAvatar(
                            backgroundImage:
                                NetworkImage(snapshot.data[index].picture),
                          ),
                          subtitle: Text(snapshot.data[index].email),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Details(snapshot.data[index])));
                          },
                        );
                      });
                }
              }),
        ));
  }
}

// Scaffold(
//   appBar: AppBar(
//     title: Text("Announcement"),
//     actions: <Widget>[
//       Icon(Icons.search),
//     ],
//     leading: Icon(Icons.chevron_left),
//   ),
//   body: Center(
//     child: Text("list of announcement"),
//   ),
// );
