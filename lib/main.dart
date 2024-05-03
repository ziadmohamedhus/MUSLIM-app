import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test1/READ/List.dart';
import 'AZKAR/Home-Azkar.dart';
import 'HOME.dart';
import 'SOUND/HOME-S.dart';
import 'SOUND/Radio.dart';
import 'SOUND/menshawy-list.dart';
import 'SOUND/sheraim-list.dart';
import 'TASPEH/Home-Tas.dart';
import 'TASPEH/T1.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {


    return MaterialApp(
     debugShowCheckedModeBanner: false,
      theme: ThemeData(
          //fontFamily: 'Messiri',
          scaffoldBackgroundColor:HexColor('f2e8cf'),
          //primarySwatch: HexColor('f2e8cf'),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            type: BottomNavigationBarType.fixed,
            backgroundColor: HexColor('ffe0f4'),
          ),
          textTheme: TextTheme(
            bodyText1: TextStyle(color: HexColor('32313a'),fontSize: 25.0,fontWeight: FontWeight.bold,),
            bodyText2: TextStyle(color: HexColor('32313a'),fontSize: 15.0,fontWeight: FontWeight.bold),
          )
      ),
      darkTheme: ThemeData(
          fontFamily: 'Inter',
          scaffoldBackgroundColor:HexColor('3A3B3C'),
          primarySwatch: Colors.deepPurple,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            type: BottomNavigationBarType.fixed,
            backgroundColor: HexColor('ffe0f4'),
          ),
          textTheme: TextTheme(
            bodyText1: TextStyle(color: HexColor('fcfeff'),fontSize: 25.0,fontWeight: FontWeight.bold,),
            bodyText2: TextStyle(color: HexColor('fcfeff'),fontSize: 15.0,fontWeight: FontWeight.bold),
          )
      ),
      themeMode: ThemeMode.light,

      home:  HOME(),
    );
  }
}

//class MyHomePage extends StatelessWidget {
  //@override
  // Widget build(BuildContext context) {
    //return Scaffold(
      //appBar: AppBar(
       // leading:IconButton(icon: Icon(Icons.menu),onPressed: (){print('hillow zizo');},) ,
       // title: Text('zizoApp'),
        //actions: [
        //  IconButton(icon: Icon(Icons.search),onPressed: (){print('search===');},),
         // IconButton(icon: Icon(Icons.notification_important),onPressed: (){print('notification zizo');},),
       // ],
       // backgroundColor: Colors.blue,
       // elevation: 40.0,
      //),
     
     //Column(children: [
       //Expanded(child: Container(color:Colors.limeAccent,child: Text('Ziad',style: TextStyle(fontSize: 30.0,color: Colors.cyan),),),),
       //Expanded(child: Container(color:Colors.greenAccent,child: Text('Mohamed',style: TextStyle(fontSize: 30.0,color: Colors.deepOrangeAccent),),),),
       //Expanded(child: Container(color:Colors.purpleAccent,child: Text('Hussien',style: TextStyle(fontSize: 30.0,color: Colors.greenAccent),),),),
       //Expanded(child: Container(color:Colors.amberAccent,child: Text('Mohamed',style: TextStyle(fontSize: 30.0,color: Colors.teal),),),),
     //],)



        //Column(children: [
          //Container(
           // width: 220.0,
            //height: 220.0,
            //decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),),
            //clipBehavior: Clip.antiAliasWithSaveLayer,
            //padding: EdgeInsets.all(10.0),
            //child: Stack(
              //alignment: Alignment.bottomCenter,
              //children: [
                //Image(image: NetworkImage('https://khaleejitech.com/wp-content/uploads/2021/09/apple-iphone-13-01.jpg'),height: 220.0,width: 220.0,),
                //Container(color: Colors.black.withOpacity(0.6),width: 220.0,child: Text('I-PHONE 13',style: TextStyle(color: Colors.white,fontSize: 20.0),textAlign: TextAlign.center,))
              //],
           // ),
         // ),
       // ]
     // body:

        
        

  //}
  //}



