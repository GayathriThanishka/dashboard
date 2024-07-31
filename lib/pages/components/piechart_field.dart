import 'dart:math';

import 'package:authendication/model/piechart_list.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartTask extends StatelessWidget {
  PieChartTask({super.key});
  // final List<Color> pieColor = [
  //   const Color(0xffFFA600),
  //   Colors.blue,
  //   const Color.fromARGB(255, 8, 58, 82),
  //   const Color(0xff661195),
  //   const Color(0xffa05195)
  // ];
  Color getRandomColor() {
    final random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  @override
  Widget build(BuildContext context) {
    final randomColors = List<Color>.generate(
      PieChartModel.pieChartList.length,
      (index) => getRandomColor(),
    );
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(border: Border.all(width: 1)),
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 2,
        child: Row(children: [
          Expanded(
            child: PieChart(PieChartData(
                sectionsSpace: 0,
                centerSpaceRadius: 30,
                sections: PieChartModel.pieChartList.map((data) {
                  final color =
                      randomColors[PieChartModel.pieChartList.indexOf(data)];

                  return PieChartSectionData(
                      color: color,
                      radius: 90,
                      titleStyle: const TextStyle(color: Colors.white),
                      title: '${data.percentage}%',
                      value: data.percentage);
                }).toList())),
          ),
          const SizedBox(
            width: 50,
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: PieChartModel.pieChartList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Row(
                    children: [
                      Container(
                        width: 16,
                        height: 16,
                        color: randomColors[index],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(PieChartModel.pieChartList[index].city)
                    ],
                  ),
                );
              },
            ),
          )
        ]),
      ),
    );
  }
}
