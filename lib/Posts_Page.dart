import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sunday_class/model/Postmodle.dart';
import 'package:sunday_class/myprofile.dart';
//import 'package:suntusthsbatchsecond/profile_page.dart';

//take a list for post
List<PostModel> post = [
  PostModel(
    //1st post
    username: 'nur123',
    profileImageUrl: 'images/Sheikh-Hasina.jpg',
    caption: '1st colages',
    postImageUrl: 'images/posts/post_1.jpg',
    address: '1st Address',
    likes: 1,
  ),
  PostModel(
    //1st post
    username: 'nur123',
    profileImageUrl: 'images/Sheikh-Hasina.jpg',
    caption: '1st colages',
    postImageUrl: 'images/posts/post_1.jpg',
    address: '1st Address',
    likes: 1,
  ),
  PostModel(
    //1st post
    username: 'nur123',
    profileImageUrl: 'images/Sheikh-Hasina.jpg',
    caption: '1st colages',
    postImageUrl: 'images/posts/post_1.jpg',
    address: '1st Address',
    likes: 1,
  ),
];

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
////body start frome Hare
      body: ListView.builder(
          itemCount: post.length, //post list lenth=itemcount
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: MediaQuery.of(context).size.height / 1.5,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color.fromRGBO(245, 12, 104, .1),
                      Color.fromRGBO(245, 12, 104, .2),
                      Color.fromRGBO(245, 12, 104, .3),
                      Color.fromRGBO(245, 12, 104, .4),
                      Color.fromRGBO(245, 12, 104, .5),
                      Color.fromRGBO(245, 12, 104, .6),
                      Color.fromRGBO(245, 12, 104, .7),
                      Color.fromRGBO(245, 12, 104, .8),
                      Color.fromRGBO(245, 12, 104, .9),
                      Color.fromRGBO(245, 12, 104, 1),
                    ]),
                borderRadius: BorderRadius.circular(15),
              ),
              //
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 7),
                    child: Row(
                      //heder row
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 13),
                          // padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage("${post[index].profileImageUrl}"),
                          ),
                        ),
                        //colm for Heder text
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${post[index].username}",
                                style: TextStyle(
                                  color: Color.fromRGBO(21, 21, 21, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.start),
                            Text("${DateTime.now()}",
                                style: TextStyle(
                                    color: Color.fromRGBO(21, 21, 21, 1),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17),
                                textAlign: TextAlign.start)
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
/* RichText(
                          text: TextSpan(
                              text: "${post[index].username}",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(21, 21, 21, 1),
                                height: 1.2,
                              ),
                              children: [
                                TextSpan(
                                  text: "${DateTime.now()}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Color.fromRGBO(21, 21, 21, 1)),
                                ),
                              ]),
                        ),
                        // */
