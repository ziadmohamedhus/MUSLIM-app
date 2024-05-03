
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class T2 extends StatefulWidget {
  @override
  State<T2> createState() => _T1State();
}

class _T1State extends State<T2> {
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
                Text('اللهم صلي علي سيدنا محمد',style: TextStyle(color: HexColor('656d4a'),fontSize: 20) ,)
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
