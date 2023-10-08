import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'pages/homepage.dart';
import 'pages/LoginPage.dart';
import 'package:google_fonts/google_fonts.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => HomePage(),
      MyRoutes.homeRoute: (context) => HomePage(),
      MyRoutes.loginRoute: (context) => LoginPage(),
      }
    );
  }
} 