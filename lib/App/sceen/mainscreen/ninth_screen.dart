// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:no_1/App/shared_component/widget/appbar.dart';
import 'package:no_1/App/shared_component/style/colour.dart';
import 'package:no_1/App/shared_component/widget/gauge_chart.dart';

class NinthScreenPage extends StatefulWidget {
  const NinthScreenPage({super.key});

  @override
  State<NinthScreenPage> createState() => _NinthScreenPageState();
}

class _NinthScreenPageState extends State<NinthScreenPage> {
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
      body: Center(
        child: Column(
          children: [
            Text(
              'Lorem Ipsum',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'ACCURACY',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    ProgressGaugeWidget(progress: 0.5),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'ACCURACY',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    ProgressGaugeWidget(progress: 0.7),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Center(
                child: Text(
                  'Lorem Ipsum|4',
                  style: TextStyle(
                    color: white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              height: 50,
              width: 300,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: orange1,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    children: [
                      Text(
                        '4',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lorem',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 30),
                Container(
                  child: Column(
                    children: [
                      Text(
                        '2',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Ipsum',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 30),
                Container(
                  child: Column(
                    children: [
                      Text(
                        '6',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Dolor',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: purple1),
                  onPressed: () {
                    // Actions when button 1 is pressed
                  },
                  child: Text(
                    'Back',
                    style: TextStyle(color: white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Actions when button 2 is pressed
                  },
                  child: Text('Next'),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: grey,
        items: <BottomNavigationBarItem>[
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
