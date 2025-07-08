import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_ap/home/Hadith.dart';
import 'package:islami_ap/l10n/app_localizations.dart';

import '../../ahadeth_details/AhadethDetailsScreen.dart';

class Ahadtehtab extends StatefulWidget {

  @override
  State<Ahadtehtab> createState() => _AhadtehtabState();
}

class _AhadtehtabState extends State<Ahadtehtab> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadFile();
  }
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Expanded(child: Image.asset("assets/images/hadith_header.png")),
        Divider(),
        Text(AppLocalizations.of(context)!.ahadeth, style: Theme.of(context).textTheme.titleMedium,),
        Divider(),
        Expanded(
          flex: 2,
          child: ListView.separated(
              itemBuilder: (context, index) => InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed(AhadethDetailsScreen.routeName, arguments: ahadithList[index]);
                },
                child: Text(ahadithList[index].title,
                  textAlign: TextAlign.center ,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              separatorBuilder: (context, index) => SizedBox(height: 10,),
              itemCount: ahadithList.length),
        )
      ]
    );
  }

  List<Hadith> ahadithList = [];

  loadFile()async{
    String fileContent = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> ahadeth = fileContent.split("#");
    for(int i=0; i<ahadeth.length;i++){
      List<String> hadithLines = ahadeth[i].trim().split("\n");
      String hadithTitle = hadithLines[0];
      hadithLines.removeAt(0);
      String hadithContent = hadithLines.join(" ");
      ahadithList.add(Hadith(hadithTitle, hadithContent));
    }
    print(ahadithList.length);
    setState(() {

    });
  }
}
