import 'package:drawer/Pages/page1.dart';
import 'package:drawer/Pages/page2.dart';
import 'package:drawer/Pages/page3.dart';
import 'package:drawer/Pages/page4.dart';
import 'package:drawer/Pages/page5.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  List<Widget> _pages = [
    Page1(),
    Page2(),
    Page3(),
    Page4(),
    Page5(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Sample App'),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.amber,
        backgroundColor: Colors.black12,
        unselectedItemColor: const Color.fromARGB(255, 17, 21, 21),
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.black12,
            icon: Icon(Icons.home),
            label: 'Page 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Page 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Page 3',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Page 4',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Page 5',
          ),
        ],
      ),
    );
  }
}
