import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Mobile Dev Assignment'),
          centerTitle: true,
        ),
        body: Center(
            child: ConstrainedBox(
          constraints: BoxConstraints.expand(height: 550, width: 600),
          child: Container(
              color: Colors.grey,
              alignment: Alignment.center,
              // transform: Matrix4.rotationZ(0.1),
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(20)),
                  Text('THE BEST BACKGROUND EVER',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 35,
                          decoration: TextDecoration.underline)),
                  SizedBox(height: 50),
                  FittedBox(
                      child: Row(children: <Widget>[
                    Image.asset('assets/img.jpg', height: 500, width: 500),
                    Image.asset('assets/img.jpg', height: 500, width: 500),
                  ])),
                  FloatingActionButton(onPressed: () {},
                  child: Text('click')),
                ],
              )),
        )));
  }
}
