import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
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
          onPressed: (){},
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
        actions:[
      
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
                    width:3,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.green.shade400,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Text("Edit"),
                    Icon(Icons.create_sharp),
                 
                      
                      
                  ],
                ),
              ),
            ),
          ),
        ]
      ),
      //extendBodyBehindAppBar: true,
      body: Center(
              child: Container(
          height: 350,
          width: 350,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 10,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(25),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             
              //child: Text("Name:Md Nur Azom"),
              
            ],
          )
        ),
      ),
    );
  }
}
