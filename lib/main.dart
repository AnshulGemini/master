import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


void main(){
  runApp(MaterialApp(
    title: "Awesome App",
    home: HomePage()
  ));
}

class HomePage extends StatelessWidget {
  //const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8),
          alignment: Alignment.center,
          
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.teal,
            boxShadow: [BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              spreadRadius: 3,
              offset: Offset(2.0,5.0)
              )],
            gradient: LinearGradient(colors: [Colors.yellow,Colors.pink]),
            //shape: BoxShape.circle
            borderRadius: BorderRadius.circular(10),
            
          ),
          child: Text(
            "I am Box",
            style: TextStyle(
             fontWeight: FontWeight.bold,
             color: Colors.white,
             fontSize: 20
            ),
            ),
        )
      )
      
    );
  }
}