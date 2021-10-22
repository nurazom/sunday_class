import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sunday_class/myprofile.dart';

class Following_Page extends StatefulWidget {
  const Following_Page({Key key}) : super(key: key);

  @override
  _Following_PageState createState() => _Following_PageState();
}

class _Following_PageState extends State<Following_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appber
      appBar: AppBar(
        title: Text("Followeing Pagge"),
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
                    builder: (context) => ProfilePage(),
                  ),
                );
              })
        ],
      ),
    );
  }
}
