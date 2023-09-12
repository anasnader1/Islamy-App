import 'package:flutter/material.dart';

class myTheme{
 static Color primarylight=Color.fromRGBO(183, 147, 95, 1);
 static Color Blackcolor=Color(0xff242424);
 

 static ThemeData lightmode=ThemeData(
  primaryColor: primarylight,
  scaffoldBackgroundColor: Colors.transparent,
  appBarTheme: AppBarTheme(
   backgroundColor: Colors.transparent,
   elevation: 0,
    centerTitle: true,
      iconTheme: IconThemeData(
      color: Blackcolor
  )
  ),
   textTheme: TextTheme(
     titleLarge: TextStyle(
       fontSize: 30,
       fontWeight: FontWeight.bold,
       color: myTheme.Blackcolor
     ),
    titleMedium:
    TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: myTheme.Blackcolor
    ),
     titleSmall: TextStyle(
         fontSize: 25,
         fontWeight: FontWeight.w300,
         color: myTheme.Blackcolor
     ),
   ),

  bottomNavigationBarTheme: BottomNavigationBarThemeData(
   selectedItemColor: Blackcolor

  )
 );

}