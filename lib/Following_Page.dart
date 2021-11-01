import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sunday_class/model/FollowingModle.dart';
import 'package:sunday_class/myprofile.dart';

//following list
List<Following> following = [
  Following(
      usernme: "Abdur Rajjak",
      profileImageURL: "images/Profile_Images/user_1.jpg",
      datetime: DateTime.now().toUtc().toString()),
  Following(
      usernme: "Shakib Al Hasan",
      profileImageURL: "images/Profile_Images/user_2.jpg",
      datetime: DateTime.now().toUtc().toString()),
  Following(
      usernme: "Tawsif Mahbub",
      profileImageURL: "images/Profile_Images/user_3.jpg",
      datetime: DateTime.now().toUtc().toString()),
  Following(
      usernme: "Mosharraf Karim",
      profileImageURL: "images/Profile_Images/user_4.jpg",
      datetime: DateTime.now().toUtc().toString()),
  Following(
      usernme: "Chanchal Chowdhury",
      profileImageURL: "images/Profile_Images/user_5.jpg",
      datetime: DateTime.now().toUtc().toString()),
  Following(
      usernme: "Afran Nisho",
      profileImageURL: "images/Profile_Images/user_6.jpg",
      datetime: DateTime.now().toUtc().toString()),
  Following(
      usernme: "Ziaul Faruq Apurba",
      profileImageURL: "images/Profile_Images/user_7.jpg",
      datetime: DateTime.now().toUtc().toString()),
  Following(
      usernme: "Siam Ahmed",
      profileImageURL: "images/Profile_Images/user_8.jpg",
      datetime: DateTime.now().toUtc().toString()),
  Following(
      usernme: "Zakia Bari Mamo",
      profileImageURL: "images/Profile_Images/user_9.jpg",
      datetime: DateTime.now().toUtc().toString()),
  Following(
      usernme: "Mashrafe Mortaza",
      profileImageURL: "images/Profile_Images/user_10.jpg",
      datetime: DateTime.now().toUtc().toString()),
];

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
      appBar: buildAppBar(context),
/* Tha body Start feome here */
      body: folowingRowList(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
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
    );
  }

  Align folowingRowList() {
    return Align(
      alignment: Alignment.center,
      child: ListView.builder(
        itemCount: following.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.amberAccent[400],
            child: Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage:
                      AssetImage("${following[index].profileImageURL}"),
                ),
                Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.all(9),
                        child: Text("${following[index].usernme}")),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("${following[index].datetime}"),
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
