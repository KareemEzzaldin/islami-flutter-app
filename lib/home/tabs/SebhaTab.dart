import 'package:flutter/material.dart';

class Sebhatab extends StatefulWidget {
  @override
  State<Sebhatab> createState() => _SebhatabState();
}

class _SebhatabState extends State<Sebhatab> {
  int count = 0;
  int phase = 0;
  final List<String> Azkar = ["سبحان الله", "الله اكبر", "الحمدلله", "لا إله إلا الله", "اللهم صلي على سيدنا محمد"];
  double rotationAngel = 0.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          // Transform.rotate(angle: rotationAngel,
          // child:Image.asset("assets/images/body of seb7a.png", height: 300, width: 300,)),
          AnimatedRotation(
            turns: rotationAngel / (2 * 3.14159),
            duration: Duration(milliseconds: 300),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset("assets/images/body of seb7a.png", height: 245, width: 245,),
                Positioned(top: 0,child: Image.asset("assets/images/head of seb7a.png", height: 45,))
              ],
            ),
          ),
          SizedBox(height: 30),
          Text("عدد التسبيحات", style: TextStyle(fontSize: 25),),
          SizedBox(height: 30,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
            margin: EdgeInsets.symmetric(horizontal: 160),
            decoration: BoxDecoration(
              color: Color(0xffB7935F).withOpacity(0.57),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Text("$count", style: TextStyle(fontSize: 25, color: Colors.black)),
          ),
          SizedBox(height: 30,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
            ),
              onPressed:() {
              setState(() {
                count++;
                rotationAngel += 0.1;
                if(count >=30){
                  count = 0;
                  phase = (phase + 1) % Azkar.length;
                }
                if(phase == 4){
                  if(count >= 10){
                    count = 0;
                    phase = (phase + 1) % Azkar.length;
                  }
                }
              });
              },
              child: Text(Azkar[phase], style: TextStyle(color: Colors.black, fontSize: 25),)
          ),
        ],
      ),
    );
  }
}
