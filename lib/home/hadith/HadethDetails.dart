import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice5/MyTheme.dart';
import 'package:practice5/home/hadith/hadith_tab.dart';
import 'package:practice5/home/hadith/itemHadethdetails.dart';
import 'package:practice5/home/quran/itemSuradetails.dart';

class HadethDetails extends StatefulWidget {
  static const String routeName='HadethDetails';

  @override
  State<HadethDetails> createState() => _HadethDetailsState();
}

class _HadethDetailsState extends State<HadethDetails> {


  @override
  Widget build(BuildContext context) {
    var args = ModalRoute
        .of(context)
        ?.settings
        .arguments as Hadeth;


    return Stack(
      children: [
        Image.asset(
          'assets/images/default_bg.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title:
            Text(args.title, style: Theme
                .of(context)
                .textTheme
                .titleLarge),

          ),
          body:
          Container(
            margin: EdgeInsets.symmetric(horizontal: MediaQuery
                .of(context)
                .size
                .width * 0.05,
                vertical: MediaQuery
                    .of(context)
                    .size
                    .height * 0.06
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30)

            ),
            child: ListView.builder(

                itemBuilder: (context, index) {
                  return itemHadethdetails(content: args.content[index],);
                },
                itemCount: args.content.length
            ),
          ),


        )
      ],
    );
  }
}

