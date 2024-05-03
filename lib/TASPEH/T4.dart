
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class T4 extends StatefulWidget {
  @override
  State<T4> createState() => _T1State();
}

class _T1State extends State<T4> {
  int x=1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 60,),
        Container(
          // width: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                Text('قل التسبيح الذي تريدة',style: TextStyle(color: HexColor('656d4a'),fontSize: 20) ,)
            ],),
        ),
        SizedBox(height: 30,),
        Text('$x',style: TextStyle(color: HexColor('656d4a'),fontSize: 30,fontWeight: FontWeight.bold) ,),
        SizedBox(height: 70,),

        Container(
          color: HexColor('656d4a') ,
          width: 200,
          height: 50,
          child: TextButton(onPressed: (){

              setState(() {x++;});

          },
              child: Text('تـسبيح')),
        ),
        SizedBox(height: 20,),

        Container(
          color: HexColor('656d4a') ,
          width: 200,
          height: 50,
          child: TextButton(onPressed: (){

            setState(() {x=0;});

          },
              child: Text('تصفير')),
        )

      ],
    );
  }
}
