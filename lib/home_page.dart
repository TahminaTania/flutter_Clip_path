import 'package:flutter/material.dart';
import 'package:flutter_drawer/child.dart';
import 'package:flutter_drawer/drawer_clipper.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("title")),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      drawer: Container(
        width: 300,
        child: ClipPath(
          clipper: drawerClipper(),
          child: Drawer(
            child: Container(
              color: Colors.blue[200],
              child: Child(),
            ),
          ),
        ),
      ),
    );
  }
}
