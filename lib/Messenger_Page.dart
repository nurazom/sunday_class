import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sunday_class/myprofile.dart';
//import 'package:suntusthsbatchsecond/profile_page.dart';

class Messenger_Page extends StatefulWidget {
  const Messenger_Page({Key key}) : super(key: key);

  @override
  _Messenger_PageState createState() => _Messenger_PageState();
}

class _Messenger_PageState extends State<Messenger_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Messenger"),

        //
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
          },
        ),
        //
        actions: [
          Container(
            child: IconButton(
              icon: Icon(
                Icons.message,
                size: 20,
                color: Color.fromRGBO(31, 31, 45, 0.6),
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
