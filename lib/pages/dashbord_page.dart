import 'package:authendication/pages/components/bar_graph.dart';
import 'package:authendication/pages/components/line_chart.dart';
import 'package:authendication/pages/components/piechart_field.dart';
import 'package:flutter/material.dart';

class PieChartPage extends StatefulWidget {
  const PieChartPage({super.key});

  @override
  State<PieChartPage> createState() => _PieChartPageState();
}

class _PieChartPageState extends State<PieChartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            PieChartTask(),
            const SizedBox(
              height: 5,
            ),
            CommonLineChart()
          ],
        ),
        BarGraphChart()
      ],
    ));
  }
}
