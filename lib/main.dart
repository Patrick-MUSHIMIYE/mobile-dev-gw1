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
        ),
        body: Container(
          width: 1500,  
          height: 600.0,  
          color: Colors.green,  
          margin: EdgeInsets.all(20),  
          padding: EdgeInsets.all(25),  
          alignment: Alignment.center,  
          // transform: Matrix4.rotationZ(0.1),
          child: Text('Introduction to Dart programming')
        )
        );
  }
}
