import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';
import 'package:flutter/cupertino.dart'; //Что это?
import 'package:psy_fi_help_app/screens/InitialPage.dart';
import 'package:psy_fi_help_app/screens/chatPage.dart';

class ProfilePage extends StatelessWidget {
  late String email;
  late String password;
  final _sizeTextBlack = const TextStyle(fontSize: 20.0, color: Colors.black);

  ProfilePage(String email, String password) {
    this.email = email;
    this.password = password;
  }

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (context) {
              return IconButton(
                icon: Icon(Icons.logout),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
              );
            },),),
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            // background image and bottom contents
            Column(
              children: <Widget>[
                //Container(//height: 200.0,color: Colors.purple,child: Center(hild: Text('Email: $email\n\nPassword: $password', style: TextStyle(color: Colors.white),),),),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                        style: TextStyle(color: Colors.purple, fontSize: 15), /*defining default style is optional */
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Email: ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: '$email\n',
                              style: TextStyle(color: Colors.black)),
                          TextSpan(
                              text: 'Password: ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: '$password',
                              style: TextStyle(color: Colors.black)),
                        ],
                      ),
                    ),
                      //child: 
                      //Text('Email: $email\n\nPassword: $password', style: TextStyle(color: Colors.purple, fontWeight: FontWeight.w700, fontSize: 20),),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }
}