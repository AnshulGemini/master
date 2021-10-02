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
        child:Container(
          padding:const EdgeInsets.all(8),
          alignment: Alignment.center,
          
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.teal,
            gradient: LinearGradient(colors: [Colors.yellow,Colors.amberAccent],)
          ),
          width: 150,
          height: 150,
          child: Text("East to West Sundu is the best"),
        ),
      ),
    );
  }
}