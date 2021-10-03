import 'package:flutter/material.dart';

import 'bgImage.dart';


// ignore: camel_case_types
class changeNameCard extends StatelessWidget {
  const changeNameCard({
    Key? key,
    required this.myText,
    required TextEditingController nameController,
  }) : _nameController = nameController, super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>
      [
        bgImage(),
        SizedBox(height: 20,),
        
        Text(myText, style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        Padding(padding: EdgeInsets.all(16),
        child: TextField(
          controller: _nameController,
          keyboardType: TextInputType.text,
          //obscureText: true,// for password
          decoration: InputDecoration(
            
            hintText: "Enter Something Here",
            labelText: "Name",
            border: OutlineInputBorder(),
          ),
        ),)
        
      ],
    );
  }
}