import 'package:flutter/material.dart';
import 'package:sample/audio/index.dart';
import 'package:sample/video/pages/index.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
                  .push(MaterialPageRoute(builder: (context) => AudioStream()));
            },
            child: Text('Audio Streaming'),
          )
        ]),
      ),
    );
  }
}
