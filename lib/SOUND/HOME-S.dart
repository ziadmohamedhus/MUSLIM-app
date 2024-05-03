
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test1/SOUND/husary-list.dart';
import 'package:test1/SOUND/menshawy-list.dart';
import 'package:test1/SOUND/sheraim-list.dart';
import 'package:test1/SOUND/sudes-list.dart';

import 'Radio.dart';
import 'abdelbaset-list.dart';
import 'ali-list.dart';




class HOME_s extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
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
                          Text('WELCOME IN,',style: Theme.of(context).textTheme.bodyText2,),
                          SizedBox(height: 5.0,),
                          Text(' EL MOUMIN APP',style: Theme.of(context).textTheme.bodyText1),
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
                Container(
                    height: 310.0,
                    child:ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: InkWell(
                            onTap: (){Navigator.push((context),  MaterialPageRoute(builder: (context)=>Hosary_list()));},
                            child: Container(
                              padding: EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                color: HexColor('73937e'),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                        width: 220.0,
                                        height: 160.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                        child: Image.asset('assets/image/h.jpg',),),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      'الشيخ محمود خليل الحصري',
                                      style: TextStyle(
                                          color: HexColor('32313a'),
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        fontFamily: 'Messiri',
                                      ),
                                    ),
                                    Text(
                                      'قارئ للقرآن الكريم مصري',
                                      style: TextStyle(
                                        color: HexColor('32313a'),
                                        fontSize: 17.0,

                                        fontFamily: 'Messiri',
                                      ),
                                    ),
                                    Text(
                                      'حفص عن عاصم - ترتيل',
                                      style: TextStyle(
                                        color: HexColor('32313a'),
                                        fontSize: 15.0,

                                        fontFamily: 'Messiri',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: InkWell(
                            onTap: (){Navigator.push((context),  MaterialPageRoute(builder: (context)=>MenShawy_list()));},
                            child: Container(
                              padding: EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                color: HexColor('656d4a'),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                        width: 220.0,
                                        height: 160.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                        child: Image.asset('assets/image/m.jpg',),),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      'الشيخ محمد صديق المنشاوي',
                                      style: TextStyle(
                                          color: HexColor('32313a'),
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        fontFamily: 'Messiri',
                                      ),
                                    ),
                                    Text(
                                      'قارئ للقرآن الكريم مصري',
                                      style: TextStyle(
                                        color: HexColor('32313a'),
                                        fontSize: 17.0,

                                        fontFamily: 'Messiri',
                                      ),
                                    ),
                                    Text(
                                      'حفص عن عاصم - ترتيل',
                                      style: TextStyle(
                                        color: HexColor('32313a'),
                                        fontSize: 15.0,

                                        fontFamily: 'Messiri',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: InkWell(
                            onTap: (){Navigator.push((context),  MaterialPageRoute(builder: (context)=>ali_list()));},
                            child: Container(
                              padding: EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                color: HexColor('73937e'),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                        width: 220.0,
                                        height: 160.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                        child: Image.asset('assets/image/j.jpg',),),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      'الشيخ علي عبد الله جابر',
                                      style: TextStyle(
                                          color: HexColor('32313a'),
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        fontFamily: 'Messiri',
                                      ),
                                    ),
                                    Text(
                                      'إمام الحرم المكي الشريف',
                                      style: TextStyle(
                                        color: HexColor('32313a'),
                                        fontSize: 17.0,

                                        fontFamily: 'Messiri',
                                      ),
                                    ),
                                    Text(
                                      'حفص عن عاصم - ترتيل',
                                      style: TextStyle(
                                        color: HexColor('32313a'),
                                        fontSize: 15.0,

                                        fontFamily: 'Messiri',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: InkWell(
                            onTap: (){Navigator.push((context),  MaterialPageRoute(builder: (context)=>sud_list()));},
                            child: Container(
                              padding: EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                color: HexColor('73937e'),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                        width: 220.0,
                                        height: 160.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                        child: Image.asset('assets/image/s.jpg',),),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      'الشيخ عبد الرحمن السديس',
                                      style: TextStyle(
                                          color: HexColor('32313a'),
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        fontFamily: 'Messiri',
                                      ),
                                    ),
                                    Text(
                                      'إمام وخطيب الحرم المكي الشريف',
                                      style: TextStyle(
                                        color: HexColor('32313a'),
                                        fontSize: 17.0,

                                        fontFamily: 'Messiri',
                                      ),
                                    ),
                                    Text(
                                      'حفص عن عاصم - ترتيل',
                                      style: TextStyle(
                                        color: HexColor('32313a'),
                                        fontSize: 15.0,

                                        fontFamily: 'Messiri',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: InkWell(
                            onTap: (){Navigator.push((context),  MaterialPageRoute(builder: (context)=>shr_list()));},
                            child: Container(
                              padding: EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                color: HexColor('73937e'),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                        width: 220.0,
                                        height: 160.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                        child: Image.asset('assets/image/sh.png',),),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      'الشيخ سعود الشريم',
                                      style: TextStyle(
                                          color: HexColor('32313a'),
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        fontFamily: 'Messiri',
                                      ),
                                    ),
                                    Text(
                                      'إمام وخطيب الحرم المكي',
                                      style: TextStyle(
                                        color: HexColor('32313a'),
                                        fontSize: 17.0,

                                        fontFamily: 'Messiri',
                                      ),
                                    ),
                                    Text(
                                      'حفص عن عاصم - ترتيل',
                                      style: TextStyle(
                                        color: HexColor('32313a'),
                                        fontSize: 15.0,

                                        fontFamily: 'Messiri',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: InkWell(
                            onTap: (){Navigator.push((context),  MaterialPageRoute(builder: (context)=>Abd_list()));},
                            child: Container(
                              padding: EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                color: HexColor('73937e'),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                        width: 220.0,
                                        height: 160.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                        child: Image.asset('assets/image/a.jpg',),),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      'الشيخ عبدالباسط عبدالصمد',
                                      style: TextStyle(
                                          color: HexColor('32313a'),
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        fontFamily: 'Messiri',
                                      ),
                                    ),
                                    Text(
                                      'قارئ للقرآن الكريم مصري',
                                      style: TextStyle(
                                        color: HexColor('32313a'),
                                        fontSize: 17.0,

                                        fontFamily: 'Messiri',
                                      ),
                                    ),
                                    Text(
                                      'حفص عن عاصم - ترتيل',
                                      style: TextStyle(
                                        color: HexColor('32313a'),
                                        fontSize: 15.0,

                                        fontFamily: 'Messiri',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),

                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: HexColor('73937e'),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset('assets/image/r.png',height: 160,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Holy Quran Radio.',style: TextStyle(color: HexColor('32313a'),fontSize: 20.0,fontWeight: FontWeight.bold),),
                                  SizedBox(height: 4,),
                                  Text('Listen directly to the Quran from Cairo',style: TextStyle(color: HexColor('32313a'),fontSize: 15.0,fontWeight: FontWeight.bold),),
                                  SizedBox(height: 12,),
                                  MaterialButton(onPressed: (){
                                    Navigator.push((context),  MaterialPageRoute(builder: (context)=>MyHomePage2('')));
                                  }
                                    ,color: HexColor('656d4a'),
                                    child:Text('Show !',style: TextStyle(color: HexColor('ceb992'),fontSize: 15.0,fontWeight: FontWeight.bold),) ,)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

              ],

            ),
          ),
        )
    );
  }
}
