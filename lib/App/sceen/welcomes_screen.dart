// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:no_1/App/shared_component/style/colour.dart';

class StartScreenPage extends StatelessWidget {
  const StartScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: double.infinity,
                  width: 200,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(205),
                    ),
                    color: purple1,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: double.infinity,
                  width: 200,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(205),
                    ),
                    color: purple2,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.elliptical(205, 205),
                    ),
                    color: purple1,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.elliptical(205, 205),
                    ),
                    color: purple2,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 75,
            right: 0,
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Education',
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Image.asset(
                      'lib/App/Constant/Asset/image/books.png',
                      width: 150,
                      height: 150,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Lorem Ipsum orem',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('START'),
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(vertical: 16, horizontal: 100),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
