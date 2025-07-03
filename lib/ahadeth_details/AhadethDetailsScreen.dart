import 'package:flutter/material.dart';
import 'package:islami_ap/home/Hadith.dart';

class AhadethDetailsScreen extends StatelessWidget {
  static const String routeName = "AhadethDetailsScreen";
  const AhadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Hadith args = ModalRoute.of(context)?.settings.arguments as Hadith;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.fill
          )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: Card(
            child: Column(
              children: [
                Expanded(
                    child: SingleChildScrollView(child: Text(args.Content, style: TextStyle(fontSize: 25),))
                ),
              ],
            ),
        ),
      ),);
  }
}
