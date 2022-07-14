import 'package:charts_flutter/flutter.dart' as charts;

class BarChartModel {
  String day; 
  int financial;
  final charts.Color color;

  BarChartModel({ 
   required this.day,  
   required this.financial, 
   required this.color
   });
}