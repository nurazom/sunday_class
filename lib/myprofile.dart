import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sunday_class/Follower_Page.dart';
import 'package:sunday_class/Following_Page.dart';
import 'package:sunday_class/Messenger_Page.dart';
import 'package:sunday_class/Posts_Page.dart';
import 'package:sunday_class/eddit_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
            iconSize: 18,
          ),
          title: Text(
            "Profile Page",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w800,
              color: Colors.grey.shade200,
              fontStyle: FontStyle.italic,
            ),
          ),
          actions: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EdditPaze(),
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Container(
                  height: 20,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 3,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.green.shade400,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Edit"),
                      Icon(Icons.create_sharp),
                    ],
                  ),
                ),
              ),
            ),
          ]),
      /*the body start frome here*/
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //Profile Image And Name Container

              Container(
                height: MediaQuery.of(context).size.height / 6,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 6,
                      width: MediaQuery.of(context).size.width / 3.5,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/Sheikh-Hasina.jpg"),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color.fromRGBO(34, 36, 45, 1),
                            width: 3,
                            style: BorderStyle.solid,
                          )),
                    ),

                    //profile name and address column
                    Container(
                      height: MediaQuery.of(context).size.height / 6,
                      width: MediaQuery.of(context).size.width / 1.7,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 77),
                            child: Text(
                              'Sheikh Hasina ',
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Text(
                            'National Parliament House,Sher-e-Bangla Nagar, Dhaka',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //Bio Container

              Container(
                height: MediaQuery.of(context).size.height / 2.5,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height / 5,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //Text and icon container
                    Container(
                      height: MediaQuery.of(context).size.height / 8,
                      width: MediaQuery.of(context).size.width / 7,
                      margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width / 1.3,
                        top: MediaQuery.of(context).size.height / 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Bio",
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          Icon(
                            Icons.create_rounded,
                            color: Colors.black,
                            size: 18,
                          ),
                        ],
                      ),
                    ),

                    //Text Container

                    Container(
                      height: MediaQuery.of(context).size.height / 4.6,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: Text(
                        "Sheikh Hasina, also "
                        "known by her married name Sheikh Hasina Wazed, "
                        "is a Bangladeshi politician who has been serving as "
                        "the Prime Minister of Bangladesh since January 2009. "
                        "She previously served as prime minister from June 1996 to July 2001",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ),

//   //widget container

              Container(
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width,
                  child: Wrap(
                    spacing: 5,
                    runSpacing: 10,
                    alignment: WrapAlignment.spaceEvenly,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 15,
                        width: MediaQuery.of(context).size.width / 4,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 3,
                              style: BorderStyle.solid),
                          color: Color.fromRGBO(245, 245, 245, 0.5),
                        ),
                        child: FlatButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Post_Page()),
                            );
                          },
                          icon: Icon(
                            CupertinoIcons.plus_square_on_square,
                            size: 12,
                            color: Color.fromRGBO(21, 21, 21, 1),
                          ),
                          label: Text(
                            "Posts",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(21, 21, 21, 1),
                            ),
                          ),
                        ),
                      ),

                      //Messanger container button
                      Container(
                        height: MediaQuery.of(context).size.height / 15,
                        width: MediaQuery.of(context).size.width / 3.5,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromRGBO(21, 21, 21, 1),
                              width: 3,
                              style: BorderStyle.solid),
                          color: Color.fromRGBO(245, 245, 245, .5),
                        ),
                        child: FlatButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Messenger_Page()),
                            );
                          },
                          icon: Icon(
                            Icons.message_outlined,
                            size: 12,
                            color: Color.fromRGBO(21, 21, 21, 1),
                          ),
                          label: Text(
                            "Messenger",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: Color.fromRGBO(21, 21, 21, 1),
                            ),
                          ),
                        ),
                      ),

                      //Following button container
                      Container(
                        height: MediaQuery.of(context).size.height / 15,
                        width: MediaQuery.of(context).size.width / 3.7,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromRGBO(21, 21, 21, 1),
                              width: 3,
                              style: BorderStyle.solid),
                          color: Color.fromRGBO(245, 245, 245, .5),
                        ),
                        child: FlatButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Following_Page()),
                            );
                          },
                          icon: Icon(
                            Icons.follow_the_signs_rounded,
                            size: 12,
                            color: Color.fromRGBO(21, 21, 21, 1),
                          ),
                          label: Text(
                            "Following",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(21, 21, 21, 1),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),

                      //Follower Button

                      Container(
                        height: MediaQuery.of(context).size.height / 15,
                        width: MediaQuery.of(context).size.width / 3.9,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromRGBO(21, 21, 21, 1),
                              width: 3,
                              style: BorderStyle.solid),
                          color: Color.fromRGBO(245, 245, 245, .5),
                        ),
                        child: FlatButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Follower_Page()),
                            );
                          },
                          icon: Icon(
                            Icons.add_circle_outline,
                            size: 12,
                            color: Color.fromRGBO(21, 21, 21, 1),
                          ),
                          label: Text(
                            "Follower",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: Color.fromRGBO(21, 21, 21, 1),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          )),
        ),
      ),

      //
    );
  }
}
