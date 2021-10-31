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
    username: 'Sheikh Hasina',
    profileImageUrl: 'images/Sheikh-Hasina.jpg',
    caption: 'Khulna Government Mahila College',
    postImageUrl: 'images/posts/post_1.jpg',
    address: ' Jalil - Sarani, Khulna,Khulna,Bangaldesh',
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
  PostModel(
      username: 'Sheikh Hasina',
      profileImageUrl: 'images/Sheikh-Hasina.jpg',
      caption: 'Azam Khan Government Commerce College',
      address: 'Babu Khan Rd, Khulna,Khulna,Bangladesh',
      postImageUrl: 'images/posts/post_4.jpg',
      likes: 45),
  PostModel(
      username: 'Sheikh Hasina',
      profileImageUrl: 'images/Sheikh-Hasina.jpg',
      caption: 'Azam Khan Government Commerce College',
      address: 'Kashipur, B.L. College Rd, Khulna,Khulna,Bangladesh',
      postImageUrl: 'images/posts/post_5.jpg',
      likes: 35),
  PostModel(
      username: 'Sheikh Hasina',
      profileImageUrl: 'images/Sheikh-Hasina.jpg',
      caption: 'Govt. M. M. City College',
      address: '300 Khan Jahan Ali Rd, Khulna-9100,Khulna,Bangladesh',
      postImageUrl: 'images/posts/post_6.jpg',
      likes: 23),
  PostModel(
      username: 'Sheikh Hasina',
      profileImageUrl: 'images/Sheikh-Hasina.jpg',
      caption: 'Khulna Public College',
      address: 'public college, road, Khulna-9000,Khulna,Bangladesh',
      postImageUrl: 'images/posts/post_7.jpg',
      likes: 845),
  PostModel(
      username: 'Sheikh Hasina',
      profileImageUrl: 'images/Sheikh-Hasina.jpg',
      caption: 'Khulna Government College',
      address: 'Hasanbag Road, Khulna,Khulna,Bangladesh',
      postImageUrl: 'images/posts/post_8.jpg',
      likes: 5355),
  PostModel(
      username: 'Sheikh Hasina',
      profileImageUrl: 'images/Sheikh-Hasina.jpg',
      caption: 'Government Sundarban Adarsha College',
      address: '91 Khanjhan Ali road, Jessore-Dhaka Highway, Khulna,Bangladesh',
      postImageUrl: 'images/posts/post_9.jpg',
      likes: 4845),
  PostModel(
      username: 'Sheikh Hasina',
      profileImageUrl: 'images/Sheikh-Hasina.jpg',
      caption: 'Khulna Islamia Degree College',
      address: ' M A Bari St, Khulna,Khulna,Bangladesh',
      postImageUrl: 'images/posts/post_10.jpg',
      likes: 245),
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
                                textAlign: TextAlign.start),
                          ],
                        ),
                      ],
                    ),
                  ),
                  //for caption
                  Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width,
                    color: Color.fromARGB(21, 21, 21, 2),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text(
                        "${post[index].caption}",
                        style: TextStyle(fontSize: 19),
                      ),
                    ),
                  ),
                  //images container
                  Container(
                    height: MediaQuery.of(context).size.height / 2.5,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("${post[index].postImageUrl}"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  //like comment shere container
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 21,
                      width: MediaQuery.of(context).size.width,
                      // color: Color.fromRGBO(44, 2, 21, 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //like button
                          FlatButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.thumb_up),
                            label: Text("Like"),
                          ),
                          //comment button
                          FlatButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.comment),
                            label: Text("Comment"),
                          ),
                          //Shere button
                          FlatButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.share),
                            label: Text("Shere"),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
