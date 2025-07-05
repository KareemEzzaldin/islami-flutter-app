import 'package:flutter/material.dart';

class UnSeletcteditem extends StatelessWidget {
  String unselected;
  UnSeletcteditem(this.unselected);

  @override
  Widget build(BuildContext context) {
    return  Text(
      unselected,
      style: Theme.of(context).textTheme.bodySmall,
    );
  }
}
