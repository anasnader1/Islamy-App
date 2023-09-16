

import 'package:flutter/material.dart';
import 'package:practice5/HomeScreen.dart';
import 'package:practice5/MyTheme.dart';
import 'package:practice5/home/hadith/HadethDetails.dart';
import 'package:practice5/home/quran/suraDetails.dart';
import 'package:practice5/providers/app_config_providers.dart';
import 'package:provider/provider.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: ((context) =>AppConfigProvider()),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var  provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(context) => HomeScreen(),
        suraDetails.routeName:(context) => suraDetails(),
        HadethDetails.routeName:(context) => HadethDetails()
      },
      theme: myTheme.lightmode,
      darkTheme: myTheme.Darkmode,
      themeMode: provider.appTheme,
      // localizationsDelegates: [
      //   AppLocalizations.delegate, // Add this line
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // supportedLocales: [
      //   Locale('en'), // English
      //   Locale('ar'), // Spanish
      // ],

    );

  }
}
