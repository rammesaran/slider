import 'package:flutter/material.dart';
import 'package:getstarted/users.dart';


class Details extends StatelessWidget {
  final Users user;
  Details(this.user);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(user.favoriteFruit),
        ),
        body: Container(
          child: Center(),
        ));
  }
}
