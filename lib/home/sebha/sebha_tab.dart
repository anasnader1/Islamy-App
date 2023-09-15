import 'package:flutter/material.dart';

class sebhaTab extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset('assets/images/head_sebha_logo.png',height: 130 ,)),
        Center(child: Image.asset('assets/images/body_sebha_logo.png',height:180,)),
        Text('عدد التسبيحات',style:Theme.of(context).textTheme.titleMedium),
        Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color:Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Text('30',style: Theme.of(context).textTheme.titleSmall,),

        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color:Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(20)
          ),
          child: Text('سبحان  الله',style: Theme.of(context).textTheme.titleSmall,),

        ),


      ],


    );
  }
}
