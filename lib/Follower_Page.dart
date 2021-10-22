import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sunday_class/myprofile.dart';

class Follower_Page extends StatefulWidget {
  const Follower_Page({Key key}) : super(key: key);

  @override
  _Follower_PageState createState() => _Follower_PageState();
}

class _Follower_PageState extends State<Follower_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appber
      appBar: AppBar(
        title: Text("Followers Pagge"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfilePage(),
              ),
            );
          },
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.refresh_outlined),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Follower_Page(),
                  ),
                );
              })
        ],
      ),
    );
  }
}
