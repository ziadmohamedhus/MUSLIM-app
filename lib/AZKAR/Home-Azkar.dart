
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:convert';

import 'Class-Azkar.dart';
import 'Details-azkar.dart';



class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Azkar> sections = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadSections();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("أذكار المسلم"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) =>
              buildSectionItem(model: sections[index]),
          itemCount: sections.length,
        ),
      ),
    );
  }

  Widget buildSectionItem({ Azkar model}) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Show_detais(id: model.id,title: model.name,)));
      },
      child: Container(
        margin: const EdgeInsets.only(top: 12.0),
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  HexColor('391e22'),
                  HexColor('ffe0f4'),
                  HexColor('656d4a')
                ])),
        child: Center(
            child: Text(
              "${model.name}",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                  fontFamily: 'Messiri',color: HexColor('391e22')
              ),
            )),
      ),
    );
  }

  loadSections() async {
    DefaultAssetBundle.of(context)
        .loadString("assets/jason/azkar.json")
        .then((data) {
      var response = json.decode(data);
      response.forEach((section) {
        Azkar _section = Azkar.fromJson(section);
        sections.add(_section);
      });
      setState(() {});
    }).catchError((error) {
      print(error);
    });
  }
}