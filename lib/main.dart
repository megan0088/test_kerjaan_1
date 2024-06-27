// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:no_1/App/sceen/mainscreen/eighth_screen.dart';
import 'package:no_1/App/sceen/mainscreen/fifth_screen.dart';
import 'package:no_1/App/sceen/mainscreen/first_screen.dart';
import 'package:no_1/App/sceen/mainscreen/fourth_screen.dart';
import 'package:no_1/App/sceen/mainscreen/ninth_screen.dart';
import 'package:no_1/App/sceen/mainscreen/second_screen.dart';
import 'package:no_1/App/sceen/mainscreen/seventh_screen.dart';
import 'package:no_1/App/sceen/mainscreen/sixth_page.dart';
import 'package:no_1/App/sceen/mainscreen/tenth_screen.dart';
import 'package:no_1/App/sceen/mainscreen/third_screen.dart';
import 'package:no_1/App/sceen/signupscreen.dart';
import 'package:no_1/App/sceen/welcomes_screen.dart';
import 'package:no_1/App/shared_component/widget/appbar.dart';
import 'package:no_1/App/shared_component/widget/container_list.dart';
import 'package:no_1/App/shared_component/widget/gauge_chart.dart';
import 'package:no_1/App/shared_component/widget/graphic.dart';
import 'package:no_1/App/shared_component/widget/row_container_list.dart';
import 'package:no_1/App/shared_component/widget/search.dart';
import 'package:no_1/App/shared_component/widget/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const TenthScreenPage(),
    );
  }
}
