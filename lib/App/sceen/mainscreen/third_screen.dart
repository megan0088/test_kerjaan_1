// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:no_1/App/shared_component/style/colour.dart';
import 'package:no_1/App/shared_component/widget/appbar2.dart';
import 'package:no_1/App/shared_component/widget/graphic.dart';

class ThirdScreenPage extends StatefulWidget {
  const ThirdScreenPage({super.key});

  @override
  State<ThirdScreenPage> createState() => _ThirdScreenPageState();
}

class _ThirdScreenPageState extends State<ThirdScreenPage> {
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
        child: AppBarShared2(),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 80,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0)),
                  color: white),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.person,
                    color: orange1,
                    size: 50,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lorem Ipsum',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'lorem Ipsum jomet',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(border: Border.all(color: orange2)),
              child: GraphicWidget(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 120,
                  decoration: BoxDecoration(
                      color: purple1, borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Lorem Ipsum Domet',
                          style: TextStyle(color: white, fontSize: 10),
                        ),
                        Text(
                          '68%',
                          style: TextStyle(fontSize: 30, color: white),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 120,
                  decoration: BoxDecoration(
                      color: purple1, borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Lorem Ipsum Domet',
                          style: TextStyle(color: white, fontSize: 10),
                        ),
                        Text(
                          '15',
                          style: TextStyle(fontSize: 30, color: white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'nov 18,2023 lorem ipsum                      68%',
              textAlign: TextAlign.justify,
              style: TextStyle(decoration: TextDecoration.underline),
            )
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
