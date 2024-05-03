import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test1/SOUND/View-Sound.dart';

import '../Component.dart';


class shr_list extends StatelessWidget {
String v='https://server7.mp3quran.net/shur/';
  List sh=[
    '001.mp3',
    '002.mp3',
    '003.mp3',
    '004.mp3',
    '005.mp3',
    '006.mp3',
    '007.mp3',
    '008.mp3',
    '009.mp3',
    '010.mp3',
    '011.mp3',
    '012.mp3',
    '013.mp3',
    '014.mp3',
    '015.mp3',
    '016.mp3',
    '017.mp3',
    '018.mp3',
    '019.mp3',
    '020.mp3',
    '021.mp3',
    '022.mp3',
    '023.mp3',
    '024.mp3',
    '025.mp3',
    '026.mp3',
    '027.mp3',
    '028.mp3',
    '029.mp3',
    '030.mp3',
    '031.mp3',
    '032.mp3',
    '033.mp3',
    '034.mp3',
    '035.mp3',
    '036.mp3',
    '037.mp3',
    '038.mp3',
    '039.mp3',
    '040.mp3',
    '041.mp3',
    '042.mp3',
    '043.mp3',
    '044.mp3',
    '045.mp3',
    '046.mp3',
    '047.mp3',
    '048.mp3',
    '049.mp3',
    '050.mp3',
    '051.mp3',
    '052.mp3',
    '053.mp3',
    '054.mp3',
    '055.mp3',
    '056.mp3',
    '057.mp3',
    '058.mp3',
    '059.mp3',
    '060.mp3',
    '061.mp3',
    '062.mp3',
    '063.mp3',
    '064.mp3',
    '065.mp3',
    '066.mp3',
    '067.mp3',
    '068.mp3',
    '069.mp3',
    '070.mp3',
    '071.mp3',
    '072.mp3',
    '073.mp3',
    '074.mp3',
    '075.mp3',
    '076.mp3',
    '077.mp3',
    '078.mp3',
    '079.mp3',
    '080.mp3',
    '081.mp3',
    '082.mp3',
    '083.mp3',
    '084.mp3',
    '085.mp3',
    '086.mp3',
    '087.mp3',
    '088.mp3',
    '089.mp3',
    '090.mp3',
    '091.mp3',
    '092.mp3',
    '093.mp3',
    '094.mp3',
    '095.mp3',
    '096.mp3',
    '097.mp3',
    '098.mp3',
    '099.mp3',
    '100.mp3',
    '101.mp3',
    '102.mp3',
    '103.mp3',
    '104.mp3',
    '105.mp3',
    '106.mp3',
    '107.mp3',
    '108.mp3',
    '109.mp3',
    '110.mp3',
    '111.mp3',
    '112.mp3',
    '113.mp3',
    '114.mp3',


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
                      backgroundImage: AssetImage('assets/image/sh.png'),
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
                      backgroundImage: AssetImage('assets/image/sh.png'),
                      radius: 25.0,
                    ),
                    //ايقونة في الاخر
                    trailing: Icon(Icons.more_horiz_outlined),
                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> MyHomePage2(v+sh[i])));},
                  ),
                ),
            ],
          ),

        )
    );
  }
}