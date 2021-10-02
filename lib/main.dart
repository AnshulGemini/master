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
      body: Padding(
        padding: const EdgeInsets.all(8),

         child: Align(
           alignment: Alignment.center,
           child:  Container(
        width: 200,
        height: 400,
        color: Colors.black,
       child:Padding(
        padding: const EdgeInsets.all(8),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              height: 100,
              width: 100,
              color: Colors.red,
           ),
           Container(
              padding: const EdgeInsets.all(8),
              height: 100,
              width: 100,
              color: Colors.green,
           ),
           Container(
              padding: const EdgeInsets.all(8),
              height: 100,
              width: 100,
              color: Colors.yellow
           )
          ],
        )
        )
      )
      )
      
    )
    );
  }
}