import 'package:flutter/material.dart';
import 'package:islami_ap/home/SelectedItem.dart';
import 'package:islami_ap/home/unSeletctedItem.dart';

class Themebottomsheet extends StatelessWidget {
  const Themebottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Selecteditem("Light"),
          SizedBox(height: 10,),
          UnSeletcteditem("Dark")
        ],
      ),
    );
  }
}
