// import 'dart:html' as html;
// import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:psy_fi_help_app/main.dart';

class chat {
  late String name;
  late Image avatar;

  Widget shortInfo() {
    return Text(name);
  }
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Center(child: main(width, height));
  }

  Widget main(double width, height) {
    return Scaffold(
      // drawer: menuButton(height),
      backgroundColor: Color(0xFF292929),
      body: Stack(children: [
        content(width, height),
        // Positioned(child: navBar(width, height))
      ]),
    );
  }

  Widget content(double width, height) {
    return SingleChildScrollView(
        child: Column(
      children: [
        chatsList(),
      ],
    ));
  }

  Widget chatsList() {
    return Column(
      children: [
        Text(
          "idk\nidk\nidk\nidk\nidk\nidk\nidk\nidk\nidk\nidk\nidk\n",
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
