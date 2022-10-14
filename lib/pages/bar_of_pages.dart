// ignore: duplicate_ignore
// ignore: prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mentalhealthapp/pages/home_page.dart';
import 'health_page.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Bar extends StatefulWidget {
  const Bar({Key? key}) : super(key: key);

  @override
  State<Bar> createState() => _BarState();
}

class _BarState extends State<Bar> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    HealthPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _selectedIndex == 0 ? Colors.blue[800] : Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.2),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 8,
            ),
            child: GNav(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              rippleColor: Colors.blue[300]!,
              hoverColor: Colors.blue[100]!,
              gap: 8,
              activeColor: Colors.blue[800],
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.blue[100]!,
              color: Colors.blue[700],
              tabs: [
                GButton(
                  icon: LineIcons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: LineIcons.medicalNotes,
                  text: 'Health',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}
