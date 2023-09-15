 import 'package:flutter/material.dart';
import 'package:practice5/home/quran/suraDetails.dart';

class itemHadethdetails extends StatelessWidget {
  String content;

  itemHadethdetails({required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(content,style: Theme.of(context).textTheme.titleSmall,
    textAlign: TextAlign.center ,
      textDirection: TextDirection.rtl,
    );
  }
}
