import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({ Key key }) : super(key: key);

  @override
  _Splash_ScreenState createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("images/cover_image.jpg")),
                                    shape: BoxShape.rectangle,
                  color: Colors.limeAccent,
                 border: Border.all(
                   color: Colors.lightBlue,
                 ),
                ),
          height: 100,
          width: 120,
         // color: Colors.indigo.shade100,
          child: Column(
            
            
          ),

        ),
      ),

      
    );
  }
}