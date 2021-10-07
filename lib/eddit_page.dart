import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sunday_class/myprofile.dart';

class EdditPaze extends StatefulWidget {
  const EdditPaze({ Key key }) : super(key: key);

  @override
  _EdditPazeState createState() => _EdditPazeState();
}

class _EdditPazeState extends State<EdditPaze> {
  @override
  Widget build(BuildContext context) {
   
        return Scaffold(
          //Starting appbar
          appBar: AppBar(//leeding 
          leading: Container(
            height: MediaQuery.of(context).size.height/3,
             width: MediaQuery.of(context).size.width/3,
           //start decoration
            /* decoration: BoxDecoration(
               border: Border.all(color:Colors.pink),
              color:Colors.pink,
         ),*/
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios), 
                onPressed: (){//onpress to profile
                Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage()),
                    );
                }
                ),
           
            ),
    
    
    ///////appbar title
            title: Text("This is eddit Paze"),
            centerTitle: true,
           //actiton Icon
           actions: [
            IconButton(
              icon: Icon(Icons.save),
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ),
                );

            }
            )

       ]

      ),

      //
      
    );
  }
}