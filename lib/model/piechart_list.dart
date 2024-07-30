import 'package:flutter/material.dart';

class PieChartModel {
  final String city;
  final double percentage;


  PieChartModel({
    required this.percentage,
    required this.city,
   
  });
  static List<PieChartModel> pieChartList = [
    PieChartModel(city: "Coimbatore", percentage: 25, ),
    PieChartModel(city: "Madurai", percentage: 20, ),
    PieChartModel(
        city: "Erode", percentage: 25, ),
    PieChartModel(city: "Ooty", percentage: 15, ),
    PieChartModel(city: "Trichy", percentage: 30, )
  ];
}
