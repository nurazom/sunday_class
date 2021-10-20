import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sunday_class/myprofile.dart';
//import 'package:suntusthsbatchsecond/profile_page.dart';

class Post_Page extends StatefulWidget {
  const Post_Page({Key key}) : super(key: key);

  @override
  _Post_PageState createState() => _Post_PageState();
}

class _Post_PageState extends State<Post_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
          },
        ),
        title: Text(
          "post page",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        //acction
        actions: [
          IconButton(
            iconSize: 20,
            icon: Icon(Icons.refresh_outlined),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          )
        ],
        backgroundColor: Color.fromRGBO(21, 21, 21, 1),
      ),
    );
  }
}
