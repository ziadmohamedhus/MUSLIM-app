import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test1/SOUND/View-Sound.dart';

import '../Component.dart';


class sud_list extends StatelessWidget {

  List sud=[
    'https:https://server11.mp3quran.net/sds/001.mp3',
    'https:https://server11.mp3quran.net/sds/002.mp3',
    'https:https://server11.mp3quran.net/sds/003.mp3',
    'https:https://server11.mp3quran.net/sds/004.mp3',
    'https:https://server11.mp3quran.net/sds/005.mp3',
    'https:https://server11.mp3quran.net/sds/006.mp3',
    'https:https://server11.mp3quran.net/sds/007.mp3',
    'https:https://server11.mp3quran.net/sds/008.mp3',
    'https:https://server11.mp3quran.net/sds/009.mp3',
    'https:https://server11.mp3quran.net/sds/010.mp3',
    'https:https://server11.mp3quran.net/sds/011.mp3',
    'https:https://server11.mp3quran.net/sds/012.mp3',
    'https:https://server11.mp3quran.net/sds/013.mp3',
    'https:https://server11.mp3quran.net/sds/014.mp3',
    'https:https://server11.mp3quran.net/sds/015.mp3',
    'https:https://server11.mp3quran.net/sds/016.mp3',
    'https:https://server11.mp3quran.net/sds/017.mp3',
    'https:https://server11.mp3quran.net/sds/018.mp3',
    'https:https://server11.mp3quran.net/sds/019.mp3',
    'https:https://server11.mp3quran.net/sds/020.mp3',
    'https:https://server11.mp3quran.net/sds/021.mp3',
    'https:https://server11.mp3quran.net/sds/022.mp3',
    'https:https://server11.mp3quran.net/sds/023.mp3',
    'https:https://server11.mp3quran.net/sds/024.mp3',
    'https:https://server11.mp3quran.net/sds/025.mp3',
    'https:https://server11.mp3quran.net/sds/026.mp3',
    'https:https://server11.mp3quran.net/sds/027.mp3',
    'https:https://server11.mp3quran.net/sds/028.mp3',
    'https:https://server11.mp3quran.net/sds/029.mp3',
    'https:https://server11.mp3quran.net/sds/030.mp3',
    'https:https://server11.mp3quran.net/sds/031.mp3',
    'https:https://server11.mp3quran.net/sds/032.mp3',
    'https:https://server11.mp3quran.net/sds/033.mp3',
    'https:https://server11.mp3quran.net/sds/034.mp3',
    'https:https://server11.mp3quran.net/sds/035.mp3',
    'https:https://server11.mp3quran.net/sds/036.mp3',
    'https:https://server11.mp3quran.net/sds/037.mp3',
    'https:https://server11.mp3quran.net/sds/038.mp3',
    'https:https://server11.mp3quran.net/sds/039.mp3',
    'https:https://server11.mp3quran.net/sds/040.mp3',
    'https:https://server11.mp3quran.net/sds/041.mp3',
    'https:https://server11.mp3quran.net/sds/042.mp3',
    'https:https://server11.mp3quran.net/sds/043.mp3',
    'https:https://server11.mp3quran.net/sds/044.mp3',
    'https:https://server11.mp3quran.net/sds/045.mp3',
    'https:https://server11.mp3quran.net/sds/046.mp3',
    'https:https://server11.mp3quran.net/sds/047.mp3',
    'https:https://server11.mp3quran.net/sds/048.mp3',
    'https:https://server11.mp3quran.net/sds/049.mp3',
    'https:https://server11.mp3quran.net/sds/050.mp3',
    'https:https://server11.mp3quran.net/sds/051.mp3',
    'https:https://server11.mp3quran.net/sds/052.mp3',
    'https:https://server11.mp3quran.net/sds/053.mp3',
    'https:https://server11.mp3quran.net/sds/054.mp3',
    'https:https://server11.mp3quran.net/sds/055.mp3',
    'https:https://server11.mp3quran.net/sds/056.mp3',
    'https:https://server11.mp3quran.net/sds/057.mp3',
    'https:https://server11.mp3quran.net/sds/058.mp3',
    'https:https://server11.mp3quran.net/sds/059.mp3',
    'https:https://server11.mp3quran.net/sds/060.mp3',
    'https:https://server11.mp3quran.net/sds/061.mp3',
    'https:https://server11.mp3quran.net/sds/062.mp3',
    'https:https://server11.mp3quran.net/sds/063.mp3',
    'https:https://server11.mp3quran.net/sds/064.mp3',
    'https:https://server11.mp3quran.net/sds/065.mp3',
    'https:https://server11.mp3quran.net/sds/066.mp3',
    'https:https://server11.mp3quran.net/sds/067.mp3',
    'https:https://server11.mp3quran.net/sds/068.mp3',
    'https:https://server11.mp3quran.net/sds/069.mp3',
    'https:https://server11.mp3quran.net/sds/070.mp3',
    'https:https://server11.mp3quran.net/sds/071.mp3',
    'https:https://server11.mp3quran.net/sds/072.mp3',
    'https:https://server11.mp3quran.net/sds/073.mp3',
    'https:https://server11.mp3quran.net/sds/074.mp3',
    'https:https://server11.mp3quran.net/sds/075.mp3',
    'https:https://server11.mp3quran.net/sds/076.mp3',
    'https:https://server11.mp3quran.net/sds/077.mp3',
    'https:https://server11.mp3quran.net/sds/078.mp3',
    'https:https://server11.mp3quran.net/sds/079.mp3',
    'https:https://server11.mp3quran.net/sds/080.mp3',
    'https:https://server11.mp3quran.net/sds/081.mp3',
    'https:https://server11.mp3quran.net/sds/082.mp3',
    'https:https://server11.mp3quran.net/sds/083.mp3',
    'https:https://server11.mp3quran.net/sds/084.mp3',
    'https:https://server11.mp3quran.net/sds/085.mp3',
    'https:https://server11.mp3quran.net/sds/086.mp3',
    'https:https://server11.mp3quran.net/sds/087.mp3',
    'https:https://server11.mp3quran.net/sds/088.mp3',
    'https:https://server11.mp3quran.net/sds/089.mp3',
    'https:https://server11.mp3quran.net/sds/090.mp3',
    'https:https://server11.mp3quran.net/sds/091.mp3',
    'https:https://server11.mp3quran.net/sds/092.mp3',
    'https:https://server11.mp3quran.net/sds/093.mp3',
    'https:https://server11.mp3quran.net/sds/094.mp3',
    'https:https://server11.mp3quran.net/sds/095.mp3',
    'https:https://server11.mp3quran.net/sds/096.mp3',
    'https:https://server11.mp3quran.net/sds/097.mp3',
    'https:https://server11.mp3quran.net/sds/098.mp3',
    'https:https://server11.mp3quran.net/sds/099.mp3',
    'https:https://server11.mp3quran.net/sds/100.mp3',
    'https:https://server11.mp3quran.net/sds/101.mp3',
    'https:https://server11.mp3quran.net/sds/102.mp3',
    'https:https://server11.mp3quran.net/sds/103.mp3',
    'https:https://server11.mp3quran.net/sds/104.mp3',
    'https:https://server11.mp3quran.net/sds/105.mp3',
    'https:https://server11.mp3quran.net/sds/106.mp3',
    'https:https://server11.mp3quran.net/sds/107.mp3',
    'https:https://server11.mp3quran.net/sds/108.mp3',
    'https:https://server11.mp3quran.net/sds/109.mp3',
    'https:https://server11.mp3quran.net/sds/110.mp3',
    'https:https://server11.mp3quran.net/sds/111.mp3',
    'https:https://server11.mp3quran.net/sds/112.mp3',
    'https:https://server11.mp3quran.net/sds/113.mp3',
    'https:https://server11.mp3quran.net/sds/114.mp3',


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
                      backgroundImage: AssetImage('assets/image/s.jpg'),
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
                      backgroundImage: AssetImage('assets/image/s.jpg'),
                      radius: 25.0,
                    ),
                    //ايقونة في الاخر
                    trailing: Icon(Icons.more_horiz_outlined),
                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> MyHomePage2(sud[i])));},
                  ),
                ),
            ],
          ),

        )
    );
  }
}