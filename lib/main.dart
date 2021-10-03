


//import 'package:awesomeapp/pages/home_page.dart';
import 'package:awesomeapp/pages/home_page.dart';
import 'package:awesomeapp/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';




void main(){
  runApp(MaterialApp(
    title: "Awesome App",
    home: loginPage(),
    theme: ThemeData(primarySwatch: Colors.lime),
    routes: {
      "/login":(context)=>loginPage(),
      "/home":(context)=>HomePage()
    },
  ));
}
