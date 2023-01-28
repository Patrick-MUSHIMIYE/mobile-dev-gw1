import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:provider/provider.dart';
import 'image_banner.dart';

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
      body: ConstrainedBoxFunction(),
    );
  }

  Widget ConstrainedBoxFunction() {
    return ConstrainedBox(
        // Use of constrained box to set the limits of the child, container
        constraints: BoxConstraints(
            maxHeight: 500, maxWidth: 500, minHeight: 100, minWidth: 100),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ImageBanner("assets/images/image.jpg"),
    
            SizedBox(
              // Use of sizedbox
              height: 100,
            ),
            Container(
                // Use of container
                width: 400,
                height: 200.0,
                color: Colors.green,
                padding: EdgeInsets.all(25),
                alignment: Alignment.center,
                child: Text('INTRODUCTION TO DART PROGRAMMING', style: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                ),
                ),
          ],
        ),
        );
  }
}
