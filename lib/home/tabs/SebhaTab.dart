import 'package:flutter/material.dart';

class Sebhatab extends StatelessWidget {
  const Sebhatab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/images/body of seb7a.png", height: 234, width: 232,),
          SizedBox(height: 20),
          Text("عدد التسبيحات", style: TextStyle(fontSize: 25),),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25,vertical: 30),
            margin: EdgeInsets.symmetric(horizontal: 170),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ],
      ),
    );
  }
}
