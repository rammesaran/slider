import 'package:flutter/material.dart';
import 'package:getstarted/Announcement.dart';
import 'package:getstarted/myhomepage.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        drawer: UserDetailDrawer(),
        appBar: _buildAppBar(),
        body: MyHomePage(),
      ),
    );
  }
}

Widget _buildAppBar() {
  return AppBar(
    backgroundColor: Colors.blue,
    title: Text(
      "Home page",
      style: TextStyle(color: Colors.white),
    ),
  );
}

class UserDetailDrawer extends StatefulWidget {
  @override
  _UserDetailDrawerState createState() => _UserDetailDrawerState();
}

class _UserDetailDrawerState extends State<UserDetailDrawer> {
  bool showUserDetails = false;

  Widget _buildDrawerList() {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("Home"),
          leading: Icon(Icons.dashboard),
          onTap: () {},
        ),
        Divider(
          color: Colors.black,
        ),
        ListTile(
            title: Text("Announcement"),
            leading: Icon(Icons.assignment),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => Announcement()))),
        ListTile(
          title: Text("ImportantInfo"),
          leading: Icon(Icons.assignment_late),
          onTap: () {},
        ),
        ListTile(
          title: Text("HomeWork"),
          leading: Icon(Icons.home),
          onTap: () {},
        ),
        Divider(
          color: Colors.black,
        ),
        ListTile(
          title: Text("Close"),
          leading: Icon(Icons.assignment),
          onTap: () => Navigator.of(context).pop(),
        ),
      ],
    );
  }

  Widget _buildUserDetail() {
    return Container(
      child: ListView(
        children: [
          ListTile(
            title: Text("BHAVANS"),
            leading: Icon(Icons.school),
            onTap: () {},
          ),
          ListTile(
            title: Text("DAV"),
            leading: Icon(Icons.school),
            onTap: () {},
          ),
          ListTile(
            title: Text("SINDHI"),
            leading: Icon(Icons.school),
            onTap: () {},
          ),
          ListTile(
            title: Text("SANA"),
            leading: Icon(Icons.school),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        UserAccountsDrawerHeader(
          accountName: Text("Ramkumar"),
          accountEmail: Text("+91 9043025613"),
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.white,
            child: Text("R"),
          ),
          onDetailsPressed: () {
            setState(() {
              showUserDetails = !showUserDetails;
            });
          },
        ),
        Expanded(
            child: showUserDetails ? _buildUserDetail() : _buildDrawerList())
      ]),
    );
  }
}
