import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test1/SOUND/View-Sound.dart';

import '../Component.dart';


class Abd_list extends StatelessWidget {

  List adb=[
   'https://server7.mp3quran.net/basit/001.mp3',
   'https://server7.mp3quran.net/basit/002.mp3',
   'https://server7.mp3quran.net/basit/003.mp3',
   'https://server7.mp3quran.net/basit/004.mp3',
   'https://server7.mp3quran.net/basit/005.mp3',
   'https://server7.mp3quran.net/basit/006.mp3',
   'https://server7.mp3quran.net/basit/007.mp3',
   'https://server7.mp3quran.net/basit/008.mp3',
   'https://server7.mp3quran.net/basit/009.mp3',
   'https://server7.mp3quran.net/basit/010.mp3',
   'https://server7.mp3quran.net/basit/011.mp3',
   'https://server7.mp3quran.net/basit/012.mp3',
   'https://server7.mp3quran.net/basit/013.mp3',
   'https://server7.mp3quran.net/basit/014.mp3',
   'https://server7.mp3quran.net/basit/015.mp3',
   'https://server7.mp3quran.net/basit/016.mp3',
   'https://server7.mp3quran.net/basit/017.mp3',
   'https://server7.mp3quran.net/basit/018.mp3',
   'https://server7.mp3quran.net/basit/019.mp3',
    'https://server7.mp3quran.net/basit/020.mp3',
    'https://server7.mp3quran.net/basit/021.mp3',
    'https://server7.mp3quran.net/basit/022.mp3',
    'https://server7.mp3quran.net/basit/023.mp3',
    'https://server7.mp3quran.net/basit/024.mp3',
    'https://server7.mp3quran.net/basit/025.mp3',
    'https://server7.mp3quran.net/basit/026.mp3',
    'https://server7.mp3quran.net/basit/027.mp3',
    'https://server7.mp3quran.net/basit/028.mp3',
    'https://server7.mp3quran.net/basit/029.mp3',
    'https://server7.mp3quran.net/basit/030.mp3',
    'https://server7.mp3quran.net/basit/031.mp3',
    'https://server7.mp3quran.net/basit/032.mp3',
    'https://server7.mp3quran.net/basit/033.mp3',
    'https://server7.mp3quran.net/basit/034.mp3',
    'https://server7.mp3quran.net/basit/035.mp3',
    'https://server7.mp3quran.net/basit/036.mp3',
    'https://server7.mp3quran.net/basit/037.mp3',
    'https://server7.mp3quran.net/basit/038.mp3',
    'https://server7.mp3quran.net/basit/039.mp3',
    'https://server7.mp3quran.net/basit/040.mp3',
    'https://server7.mp3quran.net/basit/041.mp3',
    'https://server7.mp3quran.net/basit/042.mp3',
    'https://server7.mp3quran.net/basit/043.mp3',
    'https://server7.mp3quran.net/basit/044.mp3',
    'https://server7.mp3quran.net/basit/045.mp3',
    'https://server7.mp3quran.net/basit/046.mp3',
    'https://server7.mp3quran.net/basit/047.mp3',
    'https://server7.mp3quran.net/basit/048.mp3',
    'https://server7.mp3quran.net/basit/049.mp3',
    'https://server7.mp3quran.net/basit/050.mp3',
    'https://server7.mp3quran.net/basit/051.mp3',
    'https://server7.mp3quran.net/basit/052.mp3',
    'https://server7.mp3quran.net/basit/053.mp3',
    'https://server7.mp3quran.net/basit/054.mp3',
    'https://server7.mp3quran.net/basit/055.mp3',
    'https://server7.mp3quran.net/basit/056.mp3',
    'https://server7.mp3quran.net/basit/057.mp3',
    'https://server7.mp3quran.net/basit/058.mp3',
    'https://server7.mp3quran.net/basit/059.mp3',
    'https://server7.mp3quran.net/basit/060.mp3',
    'https://server7.mp3quran.net/basit/061.mp3',
    'https://server7.mp3quran.net/basit/062.mp3',
    'https://server7.mp3quran.net/basit/063.mp3',
    'https://server7.mp3quran.net/basit/064.mp3',
    'https://server7.mp3quran.net/basit/065.mp3',
    'https://server7.mp3quran.net/basit/066.mp3',
    'https://server7.mp3quran.net/basit/067.mp3',
    'https://server7.mp3quran.net/basit/068.mp3',
    'https://server7.mp3quran.net/basit/069.mp3',
    'https://server7.mp3quran.net/basit/070.mp3',
    'https://server7.mp3quran.net/basit/071.mp3',
    'https://server7.mp3quran.net/basit/072.mp3',
    'https://server7.mp3quran.net/basit/073.mp3',
    'https://server7.mp3quran.net/basit/074.mp3',
    'https://server7.mp3quran.net/basit/075.mp3',
    'https://server7.mp3quran.net/basit/076.mp3',
    'https://server7.mp3quran.net/basit/077.mp3',
    'https://server7.mp3quran.net/basit/078.mp3',
    'https://server7.mp3quran.net/basit/079.mp3',
    'https://server7.mp3quran.net/basit/080.mp3',
    'https://server7.mp3quran.net/basit/081.mp3',
    'https://server7.mp3quran.net/basit/082.mp3',
    'https://server7.mp3quran.net/basit/083.mp3',
    'https://server7.mp3quran.net/basit/084.mp3',
    'https://server7.mp3quran.net/basit/085.mp3',
    'https://server7.mp3quran.net/basit/086.mp3',
    'https://server7.mp3quran.net/basit/087.mp3',
    'https://server7.mp3quran.net/basit/088.mp3',
    'https://server7.mp3quran.net/basit/089.mp3',
    'https://server7.mp3quran.net/basit/090.mp3',
    'https://server7.mp3quran.net/basit/091.mp3',
    'https://server7.mp3quran.net/basit/092.mp3',
    'https://server7.mp3quran.net/basit/093.mp3',
    'https://server7.mp3quran.net/basit/094.mp3',
    'https://server7.mp3quran.net/basit/095.mp3',
    'https://server7.mp3quran.net/basit/096.mp3',
    'https://server7.mp3quran.net/basit/097.mp3',
    'https://server7.mp3quran.net/basit/098.mp3',
    'https://server7.mp3quran.net/basit/099.mp3',
    'https://server7.mp3quran.net/basit/100.mp3',
    'https://server7.mp3quran.net/basit/101.mp3',
    'https://server7.mp3quran.net/basit/102.mp3',
    'https://server7.mp3quran.net/basit/103.mp3',
    'https://server7.mp3quran.net/basit/104.mp3',
    'https://server7.mp3quran.net/basit/105.mp3',
    'https://server7.mp3quran.net/basit/105.mp3',
    'https://server7.mp3quran.net/basit/106.mp3',
    'https://server7.mp3quran.net/basit/107.mp3',
    'https://server7.mp3quran.net/basit/108.mp3',
    'https://server7.mp3quran.net/basit/109.mp3',
    'https://server7.mp3quran.net/basit/110.mp3',
    'https://server7.mp3quran.net/basit/111.mp3',
    'https://server7.mp3quran.net/basit/112.mp3',
    'https://server7.mp3quran.net/basit/113.mp3',
    'https://server7.mp3quran.net/basit/114.mp3',


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),

          child: ListView(
            children: [
              SizedBox(height: 10.0,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Department of,',style: Theme.of(context).textTheme.bodyText2),
                        SizedBox(height: 5.0,),
                        Text('Dentist',style: Theme.of(context).textTheme.bodyText1),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey[400],
                      backgroundImage: AssetImage('assets/image/a.jpg'),
                      radius: 25.0,
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              for(int i=0;i<list_2.length;i++)
                Card(
                  color:  HexColor('656d4a'),
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20)),
                  shadowColor: Colors.black,
                  elevation: 30.0,
                  child: ListTile(
                    title:  Text('${list_2[i]['name']}',style: TextStyle(color:  HexColor('391e22'),fontSize: 20.0,fontWeight: FontWeight.w600,fontFamily: 'Messiri'),) ,
                    subtitle: Text('${list_2[i]['type']}',style: TextStyle(color:  HexColor('d0b0b1'),fontSize: 15.0,fontWeight: FontWeight.w500,fontFamily: 'Messiri'),),
                    //الصورة في الاول
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey[400],
                      backgroundImage: AssetImage('assets/image/a.jpg'),
                      radius: 25.0,
                    ),
                    //ايقونة في الاخر
                    trailing: Icon(Icons.more_horiz_outlined),
                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> MyHomePage2(adb[i])));},
                  ),
                ),
            ],
          ),

        )
    );
  }
}