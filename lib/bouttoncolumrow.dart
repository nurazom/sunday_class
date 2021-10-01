import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class Bouttoncolumrow extends StatefulWidget {
  const Bouttoncolumrow({ Key key }) : super(key: key);

  @override
  _BouttoncolumrowState createState() => _BouttoncolumrowState();
}

class _BouttoncolumrowState extends State<Bouttoncolumrow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //Creating a appbar
      appBar: AppBar(
        title: Text("Hi I am appbar",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w900,
          color: Colors.red.shade400,
          fontStyle: FontStyle.italic,
        ),
        ),
        centerTitle: true,


        // to take Margin the leding Home container

          leading: InkWell(
            // working on inkwell
            onTap: (){} ,
            splashColor: Colors.yellow,
            child: Container(
              // to take Margin the leding Home container
              margin: EdgeInsets.all(4),

              //for decorat tha home box
              decoration: BoxDecoration(
               border: Border.all(color: Colors.black87 ,style: BorderStyle.solid),
              //to circulqe
              borderRadius: BorderRadius.circular(23) ,

              ),
            //color: Colors.teal.shade50,
            height: 20,
            width: 23,
            child:  Align(
            alignment : Alignment.center, 
            child : Text("Home"),
            ),


                  ),
          ),

        /// working on action 
        actions: [
        Container(
           child: Align(
            alignment: Alignment.center,
           child: Text("satings"),),


          height: 23,
          width: 50,
         // color: Colors.brown,
          decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(23),
            border: Border.all(color: Colors.yellow,
            style:BorderStyle.solid,
            width: 3,),


         //color:Colors.teal,
          ),






        )
        ],
      ),





    );
  }
} 
  
