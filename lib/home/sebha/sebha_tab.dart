import 'package:flutter/material.dart';

class sebhaTab extends StatefulWidget {
  @override
  State<sebhaTab> createState() => _sebhaTabState();
}

class _sebhaTabState extends State<sebhaTab> {
  int counter = 0;
  String text = 'سبحان الله';
  double angle=0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

          Container(
            margin: EdgeInsets.all(40),
            child: Center(
              child:  Stack(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 60),
                        child: Image.asset(
                          'assets/images/head_sebha_logo.png',
                          height: 130,
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 80),
                        child: InkWell(

                          onTap: ()

                          {
                            angle+=0.1;

                            counter++;
                            // printText(text);
                            if (counter < 34) {
                              text = 'سبحان الله';
                            } else if (counter > 33 && counter < 67) {
                              text = 'الحمدلله';
                            } else if (counter > 66 && counter < 100) {
                              text = 'الله اكبر';
                            } else if (counter == 100) {
                              text = 'لا اله الا الله';
                            } else if (counter == 101) {
                              counter = 0;
                            }
                            setState(() {});
                          },
                          child: Transform.rotate(
                              angle: angle,
                              child:Image.asset(
                          'assets/images/body_sebha_logo.png',
                          height: 180,
                        )),
    ),
                    ),
                  ],
                ),
    ),
            ),



        Text('عدد التسبيحات', style: Theme.of(context).textTheme.titleMedium),
        Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(10)),
          child: Text(
            '$counter',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(20)),
          child: Text(
            text,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
      ],
    );
  }

//   void printText(text){
//   if(counter<34){
//   text='سبحان الله';
//   }else if(counter>33&&counter<67){
//     text='الحمدلله';
//   }else if(counter>66&&counter<100){
//     text='الله اكبر';
//   }else if(counter==101){
//     counter=0;
//   }
//
// }
}
