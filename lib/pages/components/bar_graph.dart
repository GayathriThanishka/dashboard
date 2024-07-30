import 'package:authendication/model/barchart_list.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarGraphChart extends StatelessWidget {
  BarGraphChart({super.key});
 final List<Color> barColor = [
    const Color(0xffA05195),
    const Color(0xff003F5C),
    const Color(0xffFFBC40)
  ];
 final List<String> days = ["Mon", 'tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3,
      height: MediaQuery.of(context).size.height / 3,
      child: BarChart(BarChartData(
          borderData: FlBorderData(show: false),
          alignment: BarChartAlignment.spaceAround,
          gridData: const FlGridData(show: false),
          barGroups: List.generate(
            BarChartModel.weeklygrowthpoint.length,
            (index) {
              final data = BarChartModel.weeklygrowthpoint[index];
              return BarChartGroupData(x: data.x, barRods: [
                BarChartRodData(
                    toY: data.y,
                    color: barColor[index % barColor.length],
                    width: 20,
                    backDrawRodData: BackgroundBarChartRodData(
                        show: true, color: Colors.grey[200], toY: 6)),
              ]);
            },
          ),
          titlesData: FlTitlesData(
              bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                      getTitlesWidget: (value, meta) {
                        int index = value.toInt();
                        if (index >= 0 && index < days.length) {
                          return Text(
                            days[index],
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          );
                        }
                        return const SizedBox.shrink();
                      },
                      showTitles: true)),
              leftTitles:
                  const AxisTitles(sideTitles: SideTitles(showTitles: false)),
              topTitles:
                  const AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false))))),
    );
  }
}
