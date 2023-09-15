import 'package:flutter/material.dart';
import 'package:practice5/home/hadith/HadethDetails.dart';
import 'package:practice5/providers/app_config_providers.dart';
import 'package:provider/provider.dart';


import 'hadith_tab.dart';

class itemHadethName extends StatelessWidget {
  Hadeth hadeth;

  itemHadethName({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(HadethDetails.routeName,
        arguments: hadeth
        );

      },

      child: Text(hadeth.title,style:
      provider.isDarkMode()?
      Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.white)
      :
      Theme.of(context).textTheme.titleSmall,
      textAlign: TextAlign.center ,
      ),
    );
  }
}
