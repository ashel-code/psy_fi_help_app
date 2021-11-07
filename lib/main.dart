import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:psy_fi_help_app/screens/initialPage.dart';
import 'package:psy_fi_help_app/screens/info.dart';

AutovalidateMode validate = AutovalidateMode.disabled;
GlobalKey<FormState> key = new GlobalKey();
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
      //home: InitialScreen(),
      initialRoute: '/',
      routes: {
      '/': (context) => InitialScreen(),
      '/info': (context) => InfoPage(),
  },
    );
  }
}