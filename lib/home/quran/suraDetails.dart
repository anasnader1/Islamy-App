import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice5/MyTheme.dart';
import 'package:practice5/home/quran/itemSuradetails.dart';

class suraDetails extends StatefulWidget {
  static const String routeName='suraDetails';

  @override
  State<suraDetails> createState() => _suraDetailsState();
}

class _suraDetailsState extends State<suraDetails> {
  List<String> verses =[];

  @override
  Widget build(BuildContext context) {
    var args= ModalRoute.of(context)?.settings.arguments as suraDetailsargs;
    if(verses.isEmpty){
      loadFile(args.index);
    }

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
            Text('${args.Name}', style: Theme.of(context).textTheme.titleLarge),

          ),
          body:
          verses.length==0?
              Center(child: CircularProgressIndicator(color: Theme.of(context).primaryColor,))
          :
          Container(
            margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05,
            vertical: MediaQuery.of(context).size.height*0.06
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30)

            ),
            child: ListView.separated(
              separatorBuilder: (context,index){
                return Divider(
                  color: Theme.of(context).primaryColor,
                  thickness: 2,
                );
              },
              itemBuilder: (context,index){
              return itemSuradetails(index:index,content:verses[index]);
            },
            itemCount: verses.length,
            ),
          ),


        )
      ],
    );
  }

  void loadFile(int index)async{
    String content = await rootBundle.loadString('assets/sura/${index+1}.txt');
    List<String>lines =content.split('\n');
    verses=lines;
    setState(() {

    });
  }
}
class suraDetailsargs{
  String Name;
  int index;
  suraDetailsargs({required this.index,required this.Name});

}