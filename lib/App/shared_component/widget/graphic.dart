// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:no_1/App/features/controller/Graph_controller.dart';

class GraphicWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SfCartesianChart(
            primaryXAxis: CategoryAxis(),
            series: <CartesianSeries>[
              LineSeries<LearnProgress, String>(
                dataSource: <LearnProgress>[
                  LearnProgress('Jan', 35),
                  LearnProgress('Feb', 28),
                  LearnProgress('Mar', 34),
                  LearnProgress('Apr', 32),
                  LearnProgress('May', 40)
                ],
                xValueMapper: (LearnProgress progress, _) => progress.month,
                yValueMapper: (LearnProgress progress, _) => progress.progress,
              )
            ],
          ),
        ),
      ),
    );
  }
}
