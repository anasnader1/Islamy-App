import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier{
  ThemeMode appTheme =ThemeMode.dark;
   ChangeTheme (ThemeMode newMode){

    if(appTheme==newMode){
      return;
    }
    appTheme=newMode;
    notifyListeners();
  }
  bool isDarkMode(){
     return appTheme==ThemeMode.dark;

}
}