// flutter pub getimport 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:psy_fi_help_app/screens/chatScreen.dart';

AutovalidateMode validate = AutovalidateMode.disabled;
GlobalKey<FormState> key = new GlobalKey();
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WASP-Academy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Academy for students'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}
