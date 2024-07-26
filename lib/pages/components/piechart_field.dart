import 'package:authendication/model/piechart_list.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartTask extends StatelessWidget {
  const PieChartTask({super.key});

  @override
  Widget build(BuildContext context) {
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
                sections: List.generate(
                  PieChartModel.pieChartList.length,
                  (index) {
                    final data = PieChartModel.pieChartList[index];
                    return PieChartSectionData(
                        radius: 90,
                        titleStyle: const TextStyle(color: Colors.white),
                        title: '${data.percentage}%',
                        color: data.color,
                        value: data.percentage);
                  },
                ))),
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
                        color: PieChartModel.pieChartList[index].color,
                      ),
                      SizedBox(
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
