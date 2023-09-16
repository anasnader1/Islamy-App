import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice5/MyTheme.dart';
import 'package:practice5/home/hadith/itemHadethName.dart';
import 'package:practice5/providers/app_config_providers.dart';
import 'package:provider/provider.dart';

class hadithTab extends StatefulWidget {

  @override
  State<hadithTab> createState() => _hadithTabState();
}

class _hadithTabState extends State<hadithTab> {
  List<Hadeth>ahadethList=[];

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<AppConfigProvider>(context);
    if(ahadethList.isEmpty){
      loadHadethFile();
    }

    return    Column(
      children: [
        Center(child: Image.asset('assets/images/hadeth_logo.png')),
        Divider(
          thickness: 2,
          color: provider.isDarkMode()?
          myTheme.yellowColor
              :
          Theme.of(context).primaryColor,
        ),
        Text(
          'hadeth Name',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Divider(
          thickness: 2,
          color:provider.isDarkMode()?
          myTheme.yellowColor
              :
          Theme.of(context).primaryColor,
        ),
        ahadethList.isEmpty ?
                Center(child: CircularProgressIndicator(color: Theme.of(context).primaryColor,))
            :

        Expanded(
          child: ListView.separated(
            separatorBuilder: (context,index){
              return Divider(
                color: provider.isDarkMode()?
                myTheme.yellowColor
                    :
                Theme.of(context).primaryColor,
                thickness: 2,
              );
            },

            itemBuilder: (context,index){
              return itemHadethName(hadeth:ahadethList[index]);
            },
            itemCount: ahadethList.length


          ),
        )
      ],
    );
  }

  void loadHadethFile()async{
   String ahadethContent= await rootBundle.loadString('assets/sura/ahadeth.txt');
   List<String>hadethList=ahadethContent.split('#\r\n');
   for(int i=0;i<hadethList.length;i++){
     List<String>ahadethLines=hadethList[i].split('\n');
     String title = ahadethLines[0];
     ahadethLines.removeAt(0);
     Hadeth hadeth =Hadeth(content: ahadethLines, title: title);
     ahadethList.add(hadeth);
     setState(() {

     });


   }
  }
}

class Hadeth{
  String title;
  List<String>content;
  Hadeth({required this.content,required this.title});
}