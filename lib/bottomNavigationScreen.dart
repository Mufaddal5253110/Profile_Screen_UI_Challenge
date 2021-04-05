import 'package:flutter/material.dart';
import 'package:profile_app_ui_challenge/profileScreen.dart';

/// This is the stateful widget that the main application instantiates.
class BottomNavOne extends StatefulWidget {
  BottomNavOne({Key key}) : super(key: key);

  @override
  _BottomNavOneState createState() => _BottomNavOneState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _BottomNavOneState extends State<BottomNavOne> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    ProfileScreen(),
    ProfileScreen(),
    ProfileScreen(),
    ProfileScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cast_for_education),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.query_builder),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
