import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sports_score/Api/api.dart';
import 'package:sports_score/Screen/footballScreen.dart';
import 'package:sports_score/Screen/newsScreen.dart';
import 'package:sports_score/Screen/tableScreen.dart';
import 'package:sports_score/widget/nowScore.dart';
import 'package:sports_score/widget/scoreCard.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  List _widgetOptions = [FootBallScreen(), TableScreen(), NewsScree()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: ('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.table_chart_outlined),
                label: ('Table'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.newspaper),
                label: ('News'),
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber[800],
            onTap: (value) {
              setState(() {
                _selectedIndex = value;
              });
            },
          ),
          backgroundColor: Color.fromARGB(234, 255, 255, 255),
          body: _widgetOptions.elementAt(_selectedIndex)),
    );
  }
}
