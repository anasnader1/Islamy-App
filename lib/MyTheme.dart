import 'package:flutter/material.dart';

class myTheme{
 static Color primarylight=Color.fromRGBO(183, 147, 95, 1);
 static Color Blackcolor=Color(0xff242424);
 static Color primaryDark=Color(0xff141A2E);
 static Color yellowColor=Color(0xffFACC1D);


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
 static ThemeData Darkmode=ThemeData(
     primaryColor: primaryDark,
     scaffoldBackgroundColor: Colors.transparent,
     appBarTheme: AppBarTheme(
         backgroundColor: Colors.transparent,
         elevation: 0,
         centerTitle: true,
         iconTheme: IconThemeData(
             color: Colors.white
         )
     ),
     textTheme: TextTheme(
       titleLarge: TextStyle(
           fontSize: 30,
           fontWeight: FontWeight.bold,
           color: Colors.white
       ),
       titleMedium:
       TextStyle(
           fontSize: 25,
           fontWeight: FontWeight.w500,
           color: Colors.white
       ),
       titleSmall: TextStyle(
           fontSize: 25,
           fontWeight: FontWeight.w300,
           color: myTheme.yellowColor
       ),
     ),

     bottomNavigationBarTheme: BottomNavigationBarThemeData(
         selectedItemColor: yellowColor

     )
 );
}