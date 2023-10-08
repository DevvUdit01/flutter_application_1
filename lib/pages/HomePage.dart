import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

// day 11 we learned about context and constainsts

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    String name="udit";
    return Scaffold(
      appBar: AppBar(
        title: Text("FlopKart"),
      ),

      body:Center(
        child: Container(
          child: 
          Text("Welcome to FlopKart by $name",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
      ),
    drawer: MyDrawer(),
    );
  }
}