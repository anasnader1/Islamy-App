import 'package:flutter/material.dart';
import 'package:practice5/HomeScreen.dart';
import 'package:practice5/MyTheme.dart';
import 'package:practice5/home/quran/suraDetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(context) => HomeScreen(),
        suraDetails.routeName:(context) => suraDetails()
      },
      theme: myTheme.lightmode

    );
  }
}
