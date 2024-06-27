// ignore_for_file: prefer_final_fields, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:no_1/App/shared_component/style/colour.dart';
import 'package:no_1/App/shared_component/widget/appbar2.dart';

class TenthScreenPage extends StatefulWidget {
  const TenthScreenPage({Key? key}) : super(key: key);

  @override
  State<TenthScreenPage> createState() => _TenthScreenPageState();
}

class _TenthScreenPageState extends State<TenthScreenPage> {
  Map<String, bool> isSelectedMap = {
    'lorem': false,
    'ipsum': false,
    'dolor': false,
    'met': false,
  };
  int _selectedIndex = 0;
  bool _isSwitched = false;
  double _minValue = 0.0;
  double _maxValue = 100.0;
  RangeValues _values = RangeValues(0.0, 100.0);

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
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                Text(
                  'Lorem Ipsum',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Highest Rate First',
                  style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.normal)),
              Switch(
                  value: _isSwitched,
                  onChanged: ((value) {
                    setState(() {
                      _isSwitched = !_isSwitched;
                    });
                  }))
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Text(
                'Highest Rate First',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: RangeSlider(
                  values: _values,
                  min: _minValue,
                  max: _maxValue,
                  onChanged: (newValues) {
                    setState(() {
                      _values = newValues;
                    });
                  },
                  activeColor: orange1,
                  inactiveColor: purple1,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: isSelectedMap.keys.map((label) {
                  return FilterChip(
                    label: Text(label),
                    selected: isSelectedMap[label] ?? false,
                    onSelected: (bool value) {
                      setState(() {
                        isSelectedMap[label] = value;
                      });
                    },
                  );
                }).toList(),
              ),
            ],
          ),
        ],
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
