import 'package:flutter/material.dart';
import 'package:islami_ap/home/tabs/AhadtehTab.dart';
import 'package:islami_ap/home/tabs/QuranTab.dart';
import 'package:islami_ap/home/tabs/RadioTab.dart';
import 'package:islami_ap/home/tabs/SebhaTab.dart';
import 'package:islami_ap/l10n/app_localizations.dart';

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
    Radiotab()
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit:BoxFit.fill
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.app_title, style: TextStyle(fontWeight: FontWeight.w600),)  ,
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
                label: AppLocalizations.of(context)!.quran,

              ),
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon: ImageIcon(AssetImage('assets/images/ahadeth.png')),
                label: AppLocalizations.of(context)!.ahadeth,

              ),
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                label: AppLocalizations.of(context)!.sebha,

              ),
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon: ImageIcon(AssetImage('assets/images/radio.png')),
                label: AppLocalizations.of(context)?.radio,

              ),
            ]
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
