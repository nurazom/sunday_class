import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sunday_class/myprofile.dart';
import 'model/Modles.dart'; //AUTO Included list of followermodel

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
      appBar: buildAppBar(context),
      /* Follower Page ,using RichTxt(TextSpam)*/
      body: ListView.builder(
          itemCount: followermodel.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: MediaQuery.of(context).size.height / 10,
              width: MediaQuery.of(context).size.width,
              //
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage:
                        NetworkImage("${followermodel[index].imageUrl}"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      child: RichText(
                        text: TextSpan(
                            text: '${followermodel[index].username}\n',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromRGBO(21, 21, 21, 1),
                            ),
                            //
                            children: [
                              TextSpan(
                                text:
                                    'Friends: ${followermodel[index].friends}',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(21, 21, 21, 1),
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
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
    );
  }
}
