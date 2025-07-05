import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_ap/quran_details/QuranChapter.dart';

import '../style/AppStyle.dart';

class QuranDetailsScreen extends StatefulWidget {
  static const String routName = "qurandetails";

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    QuranArgs args = ModalRoute.of(context)?.settings.arguments as QuranArgs;
    if(suraLines.isEmpty){
      loadFile(args.index);
    }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppStyle.isDark
                  ?"assets/images/home_dark_background.png"
                  :'assets/images/background.png'),
              fit: BoxFit.fill
          )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.name),
        ),
        body: Card(
          child: suraLines.isEmpty
              ?(Center(child: CircularProgressIndicator(),))
              :ListView.separated(
            itemBuilder: (context, index) => Quranchapter(chapter: suraLines[index], index: index),
            separatorBuilder: (context, index) => Divider(),
            itemCount: suraLines.length,
          )
        ),
      ),);
  }

  List<String> suraLines = [];

  loadFile(int index)async{
    String fileContent = await rootBundle.loadString("assets/files/${index+1}.txt");
    suraLines = fileContent.split("\n");
    setState(() {

    });
    print(suraLines);
  }
}

class QuranArgs{
  String name;
  int index;
  QuranArgs(this.name, this.index);
}
