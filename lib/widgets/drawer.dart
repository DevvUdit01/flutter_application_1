import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageurl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSb_X7C6XnMiEakEdbIapwT4SNnCUMabqSAtw&usqp=CAU";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color:Colors.deepPurple),
                margin: EdgeInsets.zero,
                accountName: Text("Udit Pal",style: TextStyle(
              color: Colors.white,
              ),), 
                accountEmail: Text("devv.Udit@gmail.com",style: TextStyle(
              color: Colors.white,
              ),),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageurl),
                ),
                )
              ),

           ListTile(
            title: Text("Home",
               textScaleFactor: 1.4, 
            style: TextStyle(
              color: Colors.white,
              ),
            ),
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
           ),   

            ListTile(
            title: Text("Profile",
               textScaleFactor: 1.4, 
            style: TextStyle(
              color: Colors.white,
              ),
            ),
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
           ), 

           ListTile(
            title: Text("Email me",
               textScaleFactor: 1.4, 
            style: TextStyle(
              color: Colors.white,
              ),
            ),
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,
            ),
           ),   
  

          ],
        ),
      ),
    );
  }
}
