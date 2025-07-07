import 'package:flutter/material.dart';

class Quranchapter extends StatelessWidget {
  String chapter;
  int index;
  Quranchapter({required this.chapter, required this.index});
  @override
  Widget build(BuildContext context) {
    return Text("$chapter (${index+1})",
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
      style:Theme.of(context).textTheme.displayMedium,
    );
  }
}
