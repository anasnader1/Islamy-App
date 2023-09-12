import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice5/MyTheme.dart';
import 'package:practice5/home/hadith/hadith_tab.dart';
import 'package:practice5/home/quran/quran_tab.dart';
import 'package:practice5/home/radio/radio_tab.dart';
import 'package:practice5/home/sebha/sebha_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int SelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
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
                Text('islami', style: Theme.of(context).textTheme.titleLarge),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
              currentIndex: SelectedIndex,
              onTap: (index) {
                SelectedIndex = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
                    label: 'Quran'),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
                  label: 'Quran',
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                    label: 'Quran'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
                    label: 'Quran'),
              ],
            ),
          ),
          body:tabs[SelectedIndex] ,
        )
      ],
    );
  }
  List<Widget>tabs= [
    quranTab(),hadithTab(),sebhaTab(),radioTab()
  ];
}
