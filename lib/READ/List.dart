
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../Component.dart';
import 'View-Sora.dart';

class List_Read extends StatelessWidget {

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
                              backgroundImage: AssetImage('image/h.jpg'),
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
                            subtitle: Text('${list_2[i]['type']}',style: TextStyle(color: HexColor('d0b0b1'),fontSize: 15.0,fontWeight: FontWeight.w500,fontFamily: 'Messiri'),),
                            //الصورة في الاول
                            leading: CircleAvatar(
                              backgroundColor: Colors.grey[400],
                              backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/4358/4358605.png'),
                              radius: 20.0,
                            ),
                            //ايقونة في الاخر
                            trailing: Icon(Icons.more_horiz_outlined),
                            onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>view_read_sora(list_2[i]['id']) ));},
                          ),
                        ),
                    ],
                  ),

                )
            );
  }
}
/*
Scaffold(
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
                      backgroundImage: AssetImage('image/h.jpg'),
                      radius: 25.0,
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              for(int i=0;i<list_2.length;i++)
                Card(
                  color:  HexColor('8a86e2'),
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20)),
                  shadowColor: Colors.black,
                  elevation: 30.0,
                  child: ListTile(
                    title:  Text('${list_2[i]['name']}',style: TextStyle(color:  HexColor('32313a'),fontSize: 20.0,fontWeight: FontWeight.w600,fontFamily: 'Messiri'),) ,
                    subtitle: Text('${list_2[i]['type']}',style: TextStyle(color: Colors.grey[800],fontSize: 15.0,fontWeight: FontWeight.w500,fontFamily: 'Messiri'),),
                    //الصورة في الاول
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey[400],
                      backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/4358/4358605.png'),
                      radius: 20.0,
                    ),
                    //ايقونة في الاخر
                    trailing: Icon(Icons.more_horiz_outlined),
                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>view_read_sora(list_2[i]['id']) ));},
                  ),
                ),
            ],
          ),

        )
    )
 */
