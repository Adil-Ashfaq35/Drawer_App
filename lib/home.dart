import 'package:drawer_app/main.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  final String title;
  home(this.title);
  @override
  Widget build(BuildContext context) {

        return new Scaffold(
    appBar: new AppBar(
   title: new Text(title),
    ),
    body: new Center(
    child: new Text("Welcome to home page"),
    ),
    );
  }
}


