
import 'package:crypto_app/utils/appColor/app_colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class TraderOverview extends StatefulWidget {
  const TraderOverview({super.key});

  @override
  State<TraderOverview> createState() => _TraderOverviewState();
}

class _TraderOverviewState extends State<TraderOverview> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: txtfieldclr,
      padding: const EdgeInsets.all(10),
        width: double.infinity,
        height: 300,
        child: LineChart(
          LineChartData(borderData: FlBorderData(show: false), lineBarsData: [
            LineChartBarData(spots: [ 
              const FlSpot(1, 3),
              const FlSpot(7, 10),
              const FlSpot(14, 7), 
              const FlSpot(11, 3),  
              const FlSpot(16, 20),
              const FlSpot(28, 12), 
            ])
          ]),
        ),
    );
  }
}