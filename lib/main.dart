// import 'dart:async';

// import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:sample/pages/index.dart';

import 'audio.dart';

void main() => runApp(MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo'),
      ),
      body: Container(
        child: ListView(children: <Widget>[
          RaisedButton(
            child: Text('Video streaming'),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => IndexPage()));
            },
          ),
          RaisedButton(
            onPressed: () {
              // print('Pressed');

              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MyApp()));
            },
            child: Text('Audio Streaming'),
          )
        ]),
      ),
    );
  }
}
