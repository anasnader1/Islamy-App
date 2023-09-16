import 'package:flutter/material.dart';
import 'package:practice5/home/quran/suraDetails.dart';
import 'package:provider/provider.dart';

import '../../providers/app_config_providers.dart';

class itemSuraName extends StatelessWidget {
  String name;
  int index;
  itemSuraName({required this.name,required this.index});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(suraDetails.routeName,
        arguments: suraDetailsargs(index: index, Name: name)
        );

      },
      child: Text(name,style:
      provider.isDarkMode()?
      Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.white)
      :
      Theme.of(context).textTheme.titleSmall,

      textAlign: TextAlign.center ,
      ),
    );
  }
}
