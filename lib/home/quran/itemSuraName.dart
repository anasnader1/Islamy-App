import 'package:flutter/material.dart';
import 'package:practice5/home/quran/suraDetails.dart';

class itemSuraName extends StatelessWidget {
  String name;
  int index;
  itemSuraName({required this.name,required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(suraDetails.routeName,
        arguments: suraDetailsargs(index: index, Name: name)
        );

      },
      child: Text(name,style: Theme.of(context).textTheme.titleSmall,
      textAlign: TextAlign.center ,
      ),
    );
  }
}
