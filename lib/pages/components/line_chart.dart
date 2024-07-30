

import 'package:authendication/model/linechart_list.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CommonLineChart extends StatelessWidget {
  final List<Color> curveColor = [
    const Color(0xffBFDAE6),
    const Color(0xffEAF4F9),
  ];
  //List of  x-axis title
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
  //List of  y-axis title
  List<String> yearlygrowth = ["1k", "2k", "3k", "4k", "5k", "6k",];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
            width: MediaQuery.of(context).size.width / 10,
            height: MediaQuery.of(context).size.height / 3,
            child: LineChart(LineChartData(gridData: const FlGridData(show: false),
            borderData: FlBorderData(
              show: false,
              border: Border.all(color: const Color(0xff37434d), width: 1),
            ),
              minX: 0,
              maxX: 11,
              minY: 0,
              maxY: 5,
              lineBarsData: [
                LineChartBarData(
                    spots:yearlygrowthpoint.map((data) => FlSpot(data.x, data.y),).toList(),
                    isCurved: true,color: Color(0xff003F5C),
                
                    barWidth: 2,
                    dotData: const FlDotData(show: false),
                    belowBarData: BarAreaData(color: Color(0xff003F5C),
                        show: true,
                        gradient: LinearGradient(colors: curveColor),))
              ],
              titlesData: FlTitlesData(
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    interval: 1,
                    getTitlesWidget: (value, meta) {
                      int index = value.toInt();
                      if (index >= 0 && index < months.length) {
                        return Text(months[index],style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),);
                      }
                      return const SizedBox.shrink();
                    },
                    showTitles: true,
                  ),
                ),
                rightTitles:
                    const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                topTitles:
                    const AxisTitles(sideTitles: SideTitles(showTitles: false),),
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
