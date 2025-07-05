import 'package:flutter/material.dart';
import 'package:islami_ap/home/tabs/AhadtehTab.dart';
import 'package:islami_ap/home/tabs/QuranTab.dart';
import 'package:islami_ap/home/tabs/RadioTab.dart';
import 'package:islami_ap/home/tabs/SebhaTab.dart';
import 'package:islami_ap/home/tabs/SetteingsTab.dart';

import '../style/AppStyle.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<Widget> tabs = [
    QuranTab(),
    Ahadtehtab(),
    Sebhatab(),
    Radiotab(),
    Setteingstab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppStyle.isDark
              ?"assets/images/home_dark_background.png"
              :'assets/images/background.png'),
          fit:BoxFit.fill
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Islami"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: selectedIndex,
            onTap: (index){
            setState(() {
              selectedIndex = index;
            });
            },
            items: [
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon: ImageIcon(AssetImage('assets/images/moshaf.png')),
                label: "Quran",

              ),
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon: ImageIcon(AssetImage('assets/images/ahadeth.png')),
                label: "Ahadeth",

              ),
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                label: "Sebha",

              ),
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon: ImageIcon(AssetImage('assets/images/radio.png')),
                label: "Radio",

              ),
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon: Icon(Icons.settings),
                label: "Settings",

              ),
            ]
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
