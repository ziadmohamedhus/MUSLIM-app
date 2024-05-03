

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'Class-detais.dart';

class Show_detais extends StatefulWidget {
  final int id;
  final String title;
  const Show_detais({  this.id ,  this.title}) ;

  @override
  _SectionDetailScreenState createState() => _SectionDetailScreenState();
}

class _SectionDetailScreenState extends State<Show_detais> {

  List<Details> sectionDetails = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadSectionDetail();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title}"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.separated(
            physics: BouncingScrollPhysics(),
            itemBuilder: (context , index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
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
                                  style: TextStyle(color: HexColor('391e22')),
                                )),
                          ],
                          title: Text('الثواب',style: TextStyle(fontFamily: 'Messiri',color: HexColor('391e22')) ,),
                          contentPadding: EdgeInsets.all(20),
                          content:  Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(' ${sectionDetails[index].description} ',style: TextStyle(fontFamily: 'Messiri',color: HexColor('391e22')) ,),
                                ],

                          )
                          ,
                        ));},
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              HexColor('391e22'),
                             // HexColor('ffe0f4'),
                              HexColor('656d4a')
                            ])),
                    child: ListTile(
                      title:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(' ${sectionDetails[index].count} مرة ',style: TextStyle(fontFamily: 'Messiri',color: HexColor('ffe0f4')) ,),Text("${sectionDetails[index].reference}",style: TextStyle(fontFamily: 'Messiri',color: HexColor('ffe0f4')) ,),
                        ],
                      ),
                      subtitle: Text("${sectionDetails[index].content}" , textDirection: TextDirection.rtl,style: TextStyle(
                          fontSize: 20
                      ),),
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context , index) => Divider(height: 0,color: Colors.grey.withOpacity(.3),),
            itemCount: sectionDetails.length
        ),
      ),
    );
  }

  loadSectionDetail() async {
    sectionDetails = [];
    DefaultAssetBundle.of(context)
        .loadString("assets/jason/azkar_details.json")
        .then((data) {
      var response = json.decode(data);
      response.forEach((section) {
        Details _sectionDetail = Details.fromJson(section);

        if(_sectionDetail.sectionId == widget.id) {
          sectionDetails.add(_sectionDetail);
        }

      });
      setState(() {});
    }).catchError((error) {
      print(error);
    });
  }

}