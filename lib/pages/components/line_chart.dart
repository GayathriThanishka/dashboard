import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CommonLineChart extends StatelessWidget {
  final List<Color> curveColor = [
    const Color(0xff003F5C),
    const Color.fromARGB(255, 243, 216, 167)
  ];
  List<FlSpot> indicatenumber = [
    const FlSpot(0, 2),
    const FlSpot(3, 3),
    const FlSpot(6, 5),
    const FlSpot(8, 1),
    const FlSpot(10, 3),
    const FlSpot(11, 5),
  ];
  List<String> months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];
  List<String> yearlygrowth = ["1k", "2k", "3k", "4k", "5k", "6k", "7k", "8k"];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
            width: MediaQuery.of(context).size.width / 10,
            height: MediaQuery.of(context).size.height / 3,
            child: LineChart(LineChartData(
              minX: 0,
              maxX: 11,
              minY: 0,
              maxY: 10,
              lineBarsData: [
                LineChartBarData(
                    spots: indicatenumber,
                    isCurved: true,
                    gradient: LinearGradient(colors: curveColor),
                    barWidth: 10,
                    dotData: const FlDotData(show: true),
                    belowBarData: BarAreaData(
                        show: true,
                        gradient: LinearGradient(colors: curveColor)))
              ],
              titlesData: FlTitlesData(
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    interval: 1,
                    getTitlesWidget: (value, meta) {
                      int index = value.toInt();
                      if (index >= 0 && index < months.length) {
                        return Text(months[index]);
                      }
                      return const SizedBox.shrink();
                    },
                    showTitles: true,
                  ),
                ),
                rightTitles:
                    const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                topTitles:
                    const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    interval: 1,
                    getTitlesWidget: (value, meta) {
                      int index = value.toInt();
                      if (index >= 0 && index < yearlygrowth.length) {
                        return Text(yearlygrowth[index]);
                      }
                      return const SizedBox.shrink();
                    },
                    showTitles: true,
                  ),
                ),
              ),
            ))),
      ),
    );
  }
}
