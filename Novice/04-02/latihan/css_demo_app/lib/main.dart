import 'package:css_colors/css_colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CSS Color and URL',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DemoPage(),
    );
  }
}

class DemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CSS Color and Url',
          style: TextStyle(
              fontStyle: FontStyle.normal,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        centerTitle: true,
        elevation: 5.0,
      ),
      body: Container(
        color: CSSColors.lightGrey,
        child: Center(
          child: RaisedButton(
              child: Text(
                'Open Google Homepage',
                style: TextStyle(color: Colors.white),
              ),
              color: Theme.of(context).accentColor,
              onPressed: () {
                launch('https://www.google.com/');
              }),
        ),
      ),
    );
  }
}
