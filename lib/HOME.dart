
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test1/SOUND/husary-list.dart';
import 'package:test1/SOUND/menshawy-list.dart';

import 'AZKAR/Home-Azkar.dart';
import 'READ/List.dart';
import 'SOUND/HOME-S.dart';
import 'TASPEH/Home-Tas.dart';


class HOME extends StatelessWidget {

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
                     // backgroundImage: AssetImage('asset/image/1.jpg'),
                      radius: 25.0,
                    )
                  ],
                ),
              ),
              //السيرش
              SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: HexColor('ceb992'),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration:
                      InputDecoration(
                        border: InputBorder.none,
                        hintText: 'How can we help you ..',
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              //اعلانات
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
                          Image.asset('assets/image/1.png',height: 160,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Reading the Holy Quran.',style: TextStyle(color: HexColor('32313a'),fontSize: 20.0,fontWeight: FontWeight.bold),),
                                SizedBox(height: 4,),
                                Text('All surahs of the Quran in Arabic and English',style: TextStyle(color: HexColor('32313a'),fontSize: 15.0,fontWeight: FontWeight.bold),),
                                SizedBox(height: 12,),
                                MaterialButton(onPressed: (){
                                  Navigator.push((context),  MaterialPageRoute(builder: (context)=>List_Read()));
                                }
                                  ,color: HexColor('656d4a'),
                                  child:Text('Show Mushaf !',style: TextStyle(color: HexColor('ceb992'),fontSize: 15.0,fontWeight: FontWeight.bold),) ,)
                              ],
                            ),
                          )
                        ],
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
                        color: HexColor('656d4a'),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset('assets/image/2.png',height: 160,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Listen the Holy Quran.',style: TextStyle(color: HexColor('32313a'),fontSize: 20.0,fontWeight: FontWeight.bold),),
                                SizedBox(height: 4,),
                                Text('All surahs of the Quran in in several voices',style: TextStyle(color: HexColor('32313a'),fontSize: 15.0,fontWeight: FontWeight.bold),),
                                SizedBox(height: 12,),
                                MaterialButton(onPressed: (){
                                  Navigator.push((context),  MaterialPageRoute(builder: (context)=>HOME_s()));
                                }
                                  ,color: HexColor('73937e'),
                                  child:Text('LISTEN NOW',style: TextStyle(color: HexColor('ceb992'),fontSize: 15.0,fontWeight: FontWeight.bold),) ,)
                              ],
                            ),
                          )
                        ],
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
                          Image.asset('assets/image/4.png',height: 160,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Electronic praise.',style: TextStyle(color: HexColor('32313a'),fontSize: 20.0,fontWeight: FontWeight.bold),),
                                SizedBox(height: 4,),
                                Text('Praise be to God and seek forgiveness All',style: TextStyle(color: HexColor('32313a'),fontSize: 15.0,fontWeight: FontWeight.bold),),
                                SizedBox(height: 12,),
                                MaterialButton(onPressed: (){
                                  Navigator.push((context),  MaterialPageRoute(builder: (context)=>Home_tas()));
                                }
                                  ,color: HexColor('656d4a'),
                                  child:Text('SHOW NOW',style: TextStyle(color: HexColor('ceb992'),fontSize: 15.0,fontWeight: FontWeight.bold),) ,)
                              ],
                            ),
                          )
                        ],
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
                        color: HexColor('656d4a'),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset('assets/image/3.png',height: 160,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Remembrances and supplications.',style: TextStyle(color: HexColor('32313a'),fontSize: 20.0,fontWeight: FontWeight.bold),),
                                SizedBox(height: 4,),
                                Text('supplications and praises of a Muslim',style: TextStyle(color: HexColor('32313a'),fontSize: 15.0,fontWeight: FontWeight.bold),),
                                SizedBox(height: 12,),
                                MaterialButton(onPressed: (){
                                  Navigator.push((context),  MaterialPageRoute(builder: (context)=>HomeScreen()));
                                }
                                  ,color: HexColor('73937e'),
                                  child:Text('GO NOW',style: TextStyle(color: HexColor('ceb992'),fontSize: 15.0,fontWeight: FontWeight.bold),) ,)
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
