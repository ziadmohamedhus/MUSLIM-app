
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class T3 extends StatefulWidget {
  @override
  State<T3> createState() => _T1State();
}

class _T1State extends State<T3> {
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

              if(x<=100)
                Text('استغفر اللَه  العظيم من كل ذنب واتوب الك',style: TextStyle(color: HexColor('656d4a'),fontSize: 20) ,)
              else
                Text('تم',style: TextStyle(fontFamily: 'Messiri',color: HexColor('656d4a'),fontSize: 20) ,)

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
            if(x!=100)
            {
              setState(() {x++;});
            }
            else
            {
              setState(() {x=1;});
            }

          },
              child: Text('تـسبيح')),
        )

      ],
    );
  }
}
