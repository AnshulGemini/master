import 'dart:html';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
//import '../changeNameCard.dart';
import '../myDrawer.dart';




class HomePage extends StatefulWidget {
  //const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController= new TextEditingController();
  var myText="Change Me";
  var url="https://jsonplaceholder.typicode.com/photos";
  var data;
  @override
  void initState(){
    super.initState();
    getdata();
  }
  getdata()  async{
    var res= await http.get(Uri.parse(url));
    data=jsonDecode(res.body);
    setState(() {});
    print(res.body);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Divit Gemini Awesome App"),
      ),
     body: Center(
      child: Padding(padding: EdgeInsets.all(16) ,
        child:SingleChildScrollView(
        child: 
        data!=null
        ?
          SizedBox(
            height:500.0,
            child: ListView.builder(itemBuilder: (context,index){
                
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    
                    title: Text(data[index]["title"]),
                    subtitle: Text("ID: ${data[index]["id"]}"),
                    leading: Image.network("${data[index]["url"]}"),
                  ),
                );
            },
            itemCount: data.length,
            ),
          )
        :
          Center(child: CircularProgressIndicator(),)
      )
     )),
     //floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
     drawer: myDrawer(),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        myText=_nameController.text;
        setState(() {
          
        });
      },
      child: Icon(Icons.refresh),
    ),
    );
  }
}
