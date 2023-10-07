import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlopKart"),
      ),

      body:Center(
        child: Container(
          child: 
          Text("Welcome to FlopKart by udit",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
      ),
    drawer: Drawer(),
    );
  }
}