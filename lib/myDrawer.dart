import 'package:flutter/material.dart';

// ignore: camel_case_types
class myDrawer extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Drawer(
       child: ListView(
         padding: EdgeInsets.zero,
         children: [
            // DrawerHeader(
            //   child: Text(
            //     "Hi I am drawer",
            //     style: TextStyle(color: Colors.white),
            //     ),
            //   decoration: BoxDecoration(
            //     color: Colors.purple
            //   ),
            // ),
            UserAccountsDrawerHeader(
              accountName: Text("Anshul Gemini"), 
              accountEmail: Text("anshulgemini93@gmail.com"),
              //currentAccountPicture: Image.network("https://images.unsplash.com/photo-1605332134997-ae67492b8942?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTE5fHxtYW4lMjBmYWNlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1591084728795-1149f32d9866?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bWFuJTIwZmFjZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
              ),
              ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Personal"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text("Email"),
              subtitle: Text("anshulgemini@gmail.com"),
              trailing: Icon(Icons.send),
            ),
            ListTile(
              leading: Icon(Icons.perm_contact_cal),
              title: Text("Mobile"),
              subtitle: Text("9871507400"),
              trailing: Icon(Icons.call),
            ),
            ListTile(
              leading: Icon(Icons.gamepad),
              title: Text("Address"),
              subtitle: Text("Permanent"),
              trailing: Icon(Icons.location_on)
            ),
       ],

       ),
       
       );
  }
}