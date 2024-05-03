import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'T1.dart';
import 'T2.dart';
import 'T3.dart';
import 'T4.dart';

class Home_tas extends StatelessWidget {
  List<Widget> icons=[
    Tab(
      height: 80,
      child: Container(
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(

          color: HexColor('656d4a'),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: HexColor('391e22').withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: Text('تسبيح'),
      ),
    ),
    Tab(
      height: 80,
      child: Container(
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(

          color: HexColor('656d4a'),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: HexColor('391e22').withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: Text('الصلاه'),
      ),
    ),
    Tab(
      height: 80,
      child: Container(
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(

          color: HexColor('656d4a'),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: HexColor('391e22').withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: Text('الاستغفار'),
      ),
    ),
    Tab(
      height: 80,
      child: Container(
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(

          color: HexColor('656d4a'),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: HexColor('391e22').withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: Text('اخري'),
      ),
    ),
  ];
  List<Widget> pages=[
    T1(),
    T2(),
    T3(),
    T4(),


  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
          length: icons.length,
          child: Scaffold(
              body: SafeArea(

                child: Column(
                  children: [
                    SizedBox(height: 10.0,),
                    //الشريط الاعلي
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('SHOW,',style: Theme.of(context).textTheme.bodyText2,),
                              SizedBox(height: 5.0,),
                              Text('All Doctors',style: Theme.of(context).textTheme.bodyText1),
                            ],
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey[400],
                            backgroundImage: AssetImage('asset/image/1.jpg'),
                            radius: 25.0,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    //القوائم
                    TabBar(tabs: icons),
                    //عرض القوائم
                    Expanded(child: TabBarView(children: pages))




                  ],
                ),

              )
          ),
        )
    ;
  }
}
