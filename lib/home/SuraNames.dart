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
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            height: 40,
            width: 2,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onPrimaryContainer
            ),
          ),
          Expanded(
            child: Text(
              suraNumber.toString(),
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );

  }
}
