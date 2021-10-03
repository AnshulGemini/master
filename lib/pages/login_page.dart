import 'package:awesomeapp/bgImage.dart';
import 'package:awesomeapp/pages/home_page.dart';
import 'package:flutter/material.dart';


class loginPage extends StatefulWidget {
  const loginPage({ Key? key }) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final userNameControler=TextEditingController();
  final passwordNameControler=TextEditingController();

  get height => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"),),
      body: new Stack( 
        fit: StackFit.expand,
        children: [
        bgImage(),
        Center(
          child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: [
                  Form(child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(hintText: "Enter Name",labelText: "User Name"),
                        ),
                        SizedBox(
                          height:20,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(hintText: "Enter Password",labelText: "Password"),
                        )
                      ],
                    ),
                  )
                  ),
                  SizedBox(
                          height:20,
                        ),
                        RaisedButton(onPressed: (){
                          //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                          Navigator.pushNamed(context, "/home");
                        },
                        child: Text("Sign In"),color: Colors.orange,textColor: Colors.white,),
                        SizedBox(
                          height:20,
                        ),
                ],
              
              ),
              
            ),
            ),
      ),
        ),
      ],),
    );
  }
}