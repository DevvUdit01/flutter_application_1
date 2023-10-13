import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/Themes.dart';
import 'package:velocity_x/velocity_x.dart';

class cartpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: "Cart".text.make(),
        ),
    );
  }
}