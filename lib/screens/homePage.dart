import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';
import 'package:flutter/cupertino.dart'; //Что это?
import 'package:psy_fi_help_app/screens/InitialPage.dart';
import 'package:psy_fi_help_app/screens/chatPage.dart';
import 'package:psy_fi_help_app/screens/profilePage.dart';

class HomePage extends StatefulWidget {
  String email = '';
  String password = '';
  final _sizeTextBlack = const TextStyle(fontSize: 20.0, color: Colors.black);

  HomePage(String email, String password) {
    this.email = email;
    this.password = password;
  }

  @override
  MyStatefulWidgetState createState() => MyStatefulWidgetState(email, password);
}

class MyStatefulWidgetState extends State {
  static late String email;
  static late String password;

  MyStatefulWidgetState(String email, String password) {
    MyStatefulWidgetState.email = email;
    MyStatefulWidgetState.password = password;
  }

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List _widgetOptions = [
    ChatPage(),
    ProfilePage(email, password),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text("Chats"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            title: Text("Profile"),
          ),
        ],
      ),
    );
  }
}
