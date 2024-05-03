
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class T1 extends StatefulWidget {
  @override
  State<T1> createState() => _T1State();
}

class _T1State extends State<T1> {
  int x=1;

  int y=1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 60,),
        Container(
          width: 100,
          child: Column(
            children: [
              if(x<=33)
                Row(
                  children: [
                    Text('سبحان الله',style: TextStyle(color: HexColor('656d4a'),fontSize: 20) ,),
                  ],
                )
              else if(33<x && x<=66)
                Text('الحمد لله',style: TextStyle(color: HexColor('656d4a'),fontSize: 20) ,)
              else if(66<x && x<=99)
                  Text('الله اكبر',style: TextStyle(color: HexColor('656d4a'),fontSize: 20) ,)
                else
                    Text(' تم ',style: TextStyle(fontFamily: 'Messiri',color: HexColor('656d4a'),fontSize: 20) ,)

            ],),
        ),
        SizedBox(height: 30,),
        Text('$y',style: TextStyle(color: HexColor('656d4a'),fontSize: 30,fontWeight: FontWeight.bold) ,),
        SizedBox(height: 70,),

        Container(
          color: HexColor('656d4a') ,
          width: 200,
          height: 50,
          child: TextButton(onPressed: (){
            if(y!=33)
          {
            setState(() {x++;y++;});
          }
          else
          {
            setState(() {x++;y=1;});
          }
          if(x==101)
            {
              setState(() {x=1;y=1;});
            }

          },
              child: Text('تـسبيح')),
        )

      ],
    );
  }
}
