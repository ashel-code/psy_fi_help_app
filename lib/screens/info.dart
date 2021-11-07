import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';
import 'package:flutter/cupertino.dart'; //Что это?
import 'package:psy_fi_help_app/screens/InitialPage.dart';
import 'package:psy_fi_help_app/screens/chatPage.dart';
import 'package:psy_fi_help_app/screens/profilePage.dart';

class InfoPage extends StatefulWidget {
  @override
  MyStatefulWidgetState createState() => MyStatefulWidgetState();
}

class MyStatefulWidgetState extends State {
  @override
  Widget build(BuildContext context) { 
    return Scaffold( 
        appBar: AppBar(title: Text('Information about app')), 
        body: Column( 
          children: [ 
            Padding( 
              padding: 
                  EdgeInsets.only(left: 50, right: 50, top: 30, bottom: 0), 
              child: Text( 
                'Dejfve errrv verjoqcv erj v ie ueoiqeuwdf eqievfe erhcvewqvchebvie everi vebve wqbe veo wc eb wnceiv eqqqv  io.', 
                style: TextStyle(fontSize: 15, ),
                textAlign: TextAlign.center,
              ), 
            ), 
          ], 
        ) 
        //body: Text('Dejfve errrv verjoqcv erj v ie ueoiqeuwdf eqievfe erhcvewqvchebvie everi vebve wqbe veo wc eb wnceiv eqqqv  io.') 
        ); 
  }
}