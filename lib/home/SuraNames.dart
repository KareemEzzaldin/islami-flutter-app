import 'package:flutter/material.dart';
import 'package:islami_ap/quran_details/QuranDetailsScreen.dart';

class Suranames extends StatelessWidget {
  final String suraNames;
  final int suraNumber;
  final int index;
  const Suranames({super.key, required this.suraNames, required this.suraNumber, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, QuranDetailsScreen.routName, arguments: QuranArgs(suraNames, index));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Text(
              suraNames,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            height: 40,
            width: 2,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary
            ),
          ),
          Expanded(
            child: Text(
              suraNumber.toString(),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );

  }
}
