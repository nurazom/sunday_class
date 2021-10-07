import 'package:flutter/material.dart';
import 'package:sunday_class/bouttoncolumrow.dart';
import 'package:sunday_class/eddit_page.dart';
import 'package:sunday_class/myprofile.dart';
import 'package:sunday_class/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner false
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProfilePage(),
    );
  }
}
