import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/app_config_providers.dart';

class radioTab extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<AppConfigProvider>(context);

    return Column(
      children: [
      Container(
          margin: EdgeInsets.only(top: 80,bottom: 20),
          child: Center(child: Image.asset('assets/images/radio_image.png'))),
        Text('اذاعه القران الكريم',style:Theme.of(context).textTheme.titleMedium),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

            Icon(Icons.fast_rewind,size: 50,color:
           provider.isDarkMode()?
               Theme.of(context).primaryColorDark
               :
            Theme.of(context).primaryColor),
            Icon(Icons.play_arrow,size: 50,color: provider.isDarkMode()?
            Theme.of(context).primaryColorDark
                :
            Theme.of(context).primaryColor),
            Icon(Icons.fast_forward,size: 50,color:provider.isDarkMode()?
            Theme.of(context).primaryColorDark
                :
            Theme.of(context).primaryColor),
          ],),
        )


      ],
    );


  }
}
