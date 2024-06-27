// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:no_1/App/shared_component/widget/appbar.dart';
import 'package:no_1/App/shared_component/style/colour.dart';
import 'package:no_1/App/shared_component/widget/row_container_list.dart';

class FifthScreenPage extends StatefulWidget {
  const FifthScreenPage({super.key});

  @override
  State<FifthScreenPage> createState() => _FifthScreenPageState();
}

class _FifthScreenPageState extends State<FifthScreenPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: AppBarShared1(),
      ),
      body: rowList(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_add),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: orange1,
        unselectedItemColor: grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
