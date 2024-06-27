// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:no_1/App/shared_component/style/colour.dart';

class ContainerList extends StatelessWidget {
  final Color color = purple1;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5, // Misalnya, kita akan membuat 5 container
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 100,
          color: color,
          margin: EdgeInsets.all(5.0),
          child: Center(
            child: Text(
              'Ipsum Lorem ${index + 1}',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
        );
      },
    );
  }
}
