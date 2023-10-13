import 'package:flutter/material.dart'; 
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart'; 
  
 class MyTheme{ 
    static ThemeData lightTheme(BuildContext context) => ThemeData( 
         primarySwatch: Colors.cyan, 
         fontFamily: GoogleFonts.poppins().fontFamily, 
         cardColor: Colors.white,
         canvasColor: creamColor,
         focusColor: darkBluish,  //buttonColor
         hintColor: darkBluish, //accentColor
         appBarTheme: AppBarTheme( 
           color:Colors.white, 
           elevation: 0.0, 
           iconTheme: IconThemeData(color: Colors.black), 
           //textTheme: Theme.of(context).textTheme, 
         ) 
         ); 
  
      static ThemeData darkTheme(BuildContext context) => ThemeData( 
        fontFamily: GoogleFonts.poppins().fontFamily, 
         cardColor: Colors.black,
         canvasColor: darkcreamColor,
         brightness: Brightness.dark,
         focusColor: lightBliush,     //buttonColor
          hintColor:Colors.white, //accentColor
         appBarTheme: AppBarTheme( 
           color:Colors.white, 
           elevation: 0.0, 
           iconTheme: IconThemeData(color: Colors.white), 
           //textTheme: Theme.of(context).textTheme, 
         ), 
         ); 
      
 //colors
 static Color creamColor = Color(0xffff5f5f5);
 static Color darkcreamColor = Vx.gray900;
 static Color darkBluish = Color(0xff403b58);
 static Color lightBliush = Vx.indigo500;
 }