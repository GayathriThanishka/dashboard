import 'package:flutter/material.dart';

class PieChartModel {
  final String city;
  final double percentage;
  final Color color;

  PieChartModel({
    required this.percentage,
    required this.city,
    required this.color,
  });
  static List<PieChartModel> pieChartList = [
    PieChartModel(city: "Coimbatore", percentage: 25, color: Color(0xffFFA600)),
    PieChartModel(city: "Madurai", percentage: 20, color: Colors.blue),
    PieChartModel(
        city: "Erode", percentage: 25, color: Color.fromARGB(255, 8, 58, 82)),
    PieChartModel(city: "Ooty", percentage: 15, color: Color(0xff661195)),
    PieChartModel(city: "Trichy", percentage: 30, color: Color(0xffa05195))
  ];
}

