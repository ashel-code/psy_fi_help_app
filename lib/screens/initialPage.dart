import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/cupertino.dart'; //Что это?
import 'package:psy_fi_help_app/main.dart';
import 'dart:ui';
import 'package:psy_fi_help_app/screens/chatPage.dart';
import 'package:psy_fi_help_app/screens/homePage.dart';
import 'package:psy_fi_help_app/screens/initialPage.dart';

class InitialScreen extends StatelessWidget {
  String _email = '';
  String _password = '';
  final _sizeTextBlack = const TextStyle(fontSize: 20.0, color: Colors.black);
  final _sizeTextWhite = const TextStyle(fontSize: 20.0, color: Colors.white);
  final formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    BuildContext _context = context;
    return new MaterialApp(
      home: new Scaffold(
        body: new Center(
          child: new Form(
              key: formKey,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    child: new TextFormField(
                        decoration: new InputDecoration(labelText: "Email"),
                        maxLines: 1,
                        validator: (value) {
                          if (value == null) {
                            return 'Please enter some text';
                          } else if (value.length < 3) {
                            return 'Login too short.';
                          }
                          else if (value.length > 20) {
                            return 'Login too long.';
                          }
                          return null;
                        },
                        style: _sizeTextBlack,
                        onSaved: (value) {
                          if (value != null) {
                            _email = value;
                          }
                        }),
                    width: 400.0,
                  ),
                  new Container(
                    child: new TextFormField(
                        decoration: new InputDecoration(labelText: "Password"),
                        obscureText: true,
                        maxLines: 1,
                        validator: (value) {
                          if (value == null) {
                            return 'Please enter some text';
                          } else if (value.length < 6) {
                            return 'Password too short.';
                          }
                          else if (value.length > 20) {
                            return 'Password too long.';
                          }
                          return null;
                        },
                        style: _sizeTextBlack,
                        onSaved: (value) {
                          if (value != null) {
                            _password = value;
                          }
                        }),
                    width: 400.0,
                    padding: new EdgeInsets.only(top: 10.0),
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(top: 25.0),
                    child: new MaterialButton(
                      onPressed: () {
                        submit(_context);
                      },
                      color: Colors.purple,
                      height: 50.0,
                      minWidth: 150.0,
                      child: new Text(
                        "LOGIN",
                        style: _sizeTextWhite,
                      ),
                    ),
                  )
                ],
              )),
        ),
        /*floatingActionButton: FloatingActionButton(
          child: Icon(Icons.info, color: Colors.white, size: 30,),
          backgroundColor: Colors.purple,
          onPressed: (){},
      ),*/
      floatingActionButton: Container(
        height: 26,
        width: 26,
        child: FloatingActionButton(
          child: Icon(Icons.info, color: Colors.purple),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(context, '/info', (route) => true);
          },
          backgroundColor: Colors.white
          
        ),
      )
      )
    );
  }

  void submit(BuildContext _context) {
    final form = formKey.currentState;
    if (form != null) {
      if (form.validate()) {
        form.save();
        performLogin(_context);
      }
    }
  }

  void performLogin(BuildContext _context) {
    Navigator.push(
      _context,
      new MaterialPageRoute(
        builder: (context) => HomePage(_email, _password),
      ),
    );
  }
}
