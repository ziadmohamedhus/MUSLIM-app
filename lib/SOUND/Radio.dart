import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';

class MyHomePage2 extends StatefulWidget {
  String name;
  MyHomePage2(String y)
  {
    name=y;
  }


  @override
  State<MyHomePage2> createState() => _MyHomePageState(name);
}

class _MyHomePageState extends State<MyHomePage2> {
  String n;
  _MyHomePageState(String x)
  {n=x;}

  final player = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;


  String formatTime(int seconds) {
    return '${(Duration(seconds: seconds))}'.split('.')[0].padLeft(8, '0');
  }

  @override
  void initState() {
    super.initState();
    player.play(UrlSource('https://stream.radiojar.com/8s5u5tpdtwzuv'));
    player.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    player.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    player.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('zoz'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: 600,
                height: 400.0,
                child: Lottie.network(
                    'https://assets9.lottiefiles.com/packages/lf20_fOZCYo.json'),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: HexColor('391e22'),
                  radius: 25,
                  child: IconButton(
                    icon: Icon(
                      Icons.skip_previous,color: HexColor('ffe0f4'),///////
                    ),
                    onPressed: (){
                      player.play(UrlSource('https://stream.radiojar.com/8s5u5tpdtwzuv'));
                    },
                  ),
                ),
                SizedBox(width: 20,),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: HexColor('391e22'),
                  child: IconButton(
                    icon: Icon(
                      isPlaying ? Icons.pause : Icons.play_arrow,color: HexColor('ffe0f4'),
                    ),
                    onPressed: (){
                      if(isPlaying)
                      {
                        player.pause();
                      }
                      else{
                        player.resume();
                      }
                    },
                  ),
                ),
                SizedBox(width: 20,),



              ],
            ),

          ],
        ),
      ),
    );
  }
}