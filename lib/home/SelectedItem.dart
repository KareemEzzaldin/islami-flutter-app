import 'package:flutter/material.dart';

class Selecteditem extends StatelessWidget {
  String selected ;
  Selecteditem(this.selected);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          selected,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        Icon(
          Icons.check,
          size: 30,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ],
    );
  }
}
