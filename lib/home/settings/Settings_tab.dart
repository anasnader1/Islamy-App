import 'package:flutter/material.dart';
import 'package:practice5/providers/app_config_providers.dart';
import 'package:provider/provider.dart';

class settingTab
    extends StatefulWidget {
  @override
  State<settingTab> createState() => _settingTabState();
}

class _settingTabState extends State<settingTab> {
   String? selectedOption;


  List<String> _dropdownItems = [
    'Light',
    'Dark',

  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      child: Column(
        children: [
          DropdownButtonFormField<String>(
            padding:EdgeInsets.all(20),

            decoration: InputDecoration(

              hintText:'Theme Mode',



            ),


        value: selectedOption,
        items: [
          DropdownMenuItem(
            value: 'Light',
            child: Text('Light',style:TextStyle(color: Theme.of(context).primaryColor),),
          ),
          DropdownMenuItem(
            value: 'Dark',
            child: Text('Dark',style:TextStyle(color: Theme.of(context).primaryColorDark),),
          ),
        ],
        onChanged: (value) {

          setState(() {
            selectedOption = value;
          });
          if (value=='Light') {
            return provider.ChangeTheme(ThemeMode.light);
          }else if(value=='Dark'){
            return provider.ChangeTheme(ThemeMode.dark);
          }


        },
      ),

        ],
      ),
   );

  }
}
