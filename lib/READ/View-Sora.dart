import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quran/quran.dart' as quran;
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:sqflite/sqflite.dart';




class view_read_sora extends StatefulWidget {
  int id;
  view_read_sora(int z) {
    id = z;
  }

  @override
  State<view_read_sora> createState() => _view_read_soraState();
}

class _view_read_soraState extends State<view_read_sora> {

  final ItemScrollController itemScrollController = ItemScrollController();
  Database database;
List x=[];

double Font_Size=30.0;
bool Background_color=true;
@override
  void initState() {
    // TODO: implement initState
    createDatabase();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Background_color?HexColor('ffe0f4'):HexColor('391e22'),//Colors.black,
              appBar: AppBar(
                title: Text(quran.getSurahName(2)),
                actions: [
                  IconButton(onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  'OK',
                                  style: TextStyle(color: Colors.green),
                                )),
                          ],
                          title: Text('Delete Doctor'),
                          contentPadding: EdgeInsets.all(20),
                          content:  Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(

                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('FONT SIZE'),
                                      SizedBox(width: 10.0,),
                                      FloatingActionButton(onPressed: (){setState(() {
                                       Font_Size= Font_Size-5;
                                      });},mini:true,child: Icon(Icons.remove,color: Colors.black,),backgroundColor:Colors.lime[900] ,),
                                      SizedBox(width: 10.0,),
                                      FloatingActionButton(onPressed: (){setState(() {
                                        Font_Size=Font_Size+5;
                                      });},mini:true,child: Icon(Icons.add,color: Colors.black,),backgroundColor:Colors.lime[900] ,),]


                                ),
                                SizedBox(height: 15.0,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,

                                  children: [
                                    Text('READ MODE'),
                                    SizedBox(width: 10.0,),
                                    FloatingActionButton(onPressed: (){setState(() {
                                      Background_color=!Background_color;
                                    });},mini:true,child: Icon(Icons.light_mode,color: Colors.black,),backgroundColor:Colors.lime[900] ,),

                                  ],
                                ),
                              ],
                            )
                          ,
                        ));}
                  ,icon: Icon(Icons.zoom_in_outlined),
                  ),
                ],
              ),
              body: SafeArea(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      //البسملة

                      Column(
                        children: [
                          if (widget.id == 1 || widget.id == 9)
                            SizedBox(
                              height: 2,
                            )
                          else
                            Container(
                              child: Text(
                                quran.basmala,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 40,

                                    color: Background_color?HexColor('391e22'):HexColor('ffe0f4'),


                                ),
                              ),
                            )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: ScrollablePositionedList.builder(
                          itemScrollController: itemScrollController,

                          itemCount: (quran.getVerseCount(widget.id)),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: ()
                              {
                                insertToDatabase(name: quran.getSurahName(widget.id),aya: (index+1).toInt());
                                print(x);
                              },
                              child: ListTile(
                                title: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 5,),
                                    Container(
                                      child: Text(
                                        quran.getVerse(widget.id, index + 1,
                                            verseEndSymbol: false) +
                                            '     ' +
                                            quran.getVerseEndSymbol(index + 1),
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Background_color?HexColor('391e22'):HexColor('ffe0f4'),
                                          fontSize:  Font_Size,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Container(
                                      color: Colors.grey,
                                      width: double.infinity,
                                      height: 2,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.bookmarks),
        onPressed: (){
          for(int i=0;i<x.length;i++)
            {
              if(quran.getSurahName(widget.id) ==x[i]['name'])
                {
                  jump(x[i]['aya']-1);
                }
            }
          //jump(49);
        },
      ),
            );
  }
  //لاانتقال للاية
  void jump(int i)
  {
    setState(() {
      itemScrollController.scrollTo(index: i, duration: Duration(seconds: 2),curve: Curves.easeInOutCubic);

    });
  }

  void createDatabase() {
    openDatabase(
      'patients.db',
      version: 1,
      onCreate: (database, version) {

        print('database created');
        database.execute(
            'CREATE TABLE patient (id INTEGER PRIMARY KEY, name TEXT, aya INTEGER)')
            .then((value) {}).catchError((error) {});
      },
      onOpen: (database)
      {
        getDataFromDatabase(database);
        print('database opened');
      },
    ).then((value) {

      setState(() {
        database = value;
      });
    });
  }
  insertToDatabase({
    @required String name,
    @required int aya,


  }) async {
    database.transaction((txn)async {
      txn
          .rawInsert(
        'INSERT INTO patient(name, aya) VALUES("$name", $aya)',
      )
          .then((value) {
        print('$value inserted successfully');
        setState(() {
          getDataFromDatabase(database);
        });

      }).catchError((error) {
        print('Error When Inserting New Record ${error.toString()}');
      });

      return null;
    });
  }
  void getDataFromDatabase(database)
  {
    //patientlist = [];
    database.rawQuery('SELECT * FROM patient').then((value) {
      setState(() {
        x = value ;
        print(x);
        print(x.length);
      });


    });
  }
}

