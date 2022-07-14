
import 'package:crypto_app/utils/appColor/app_colors.dart';
 
import 'package:crypto_app/view/terms/bar_chart_model.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:sizer/sizer.dart';

class SubscriberChart extends StatelessWidget {
  final List<BarChartModel> data;

  SubscriberChart({required this.data});
  
  @override
  Widget build(BuildContext context) {
   List<charts.Series<BarChartModel, String>> series = [
      charts.Series(
        id: "Subscribers",
        data: data,
        domainFn: (BarChartModel series, _) => series.day,
        measureFn: (BarChartModel series, _) => series.financial,
        colorFn: (BarChartModel series, _) => series.color
      )
    ];
      
     return Container(
      height: 30.h, 
      color: divclr,
      padding: EdgeInsets.all(10), 
      child: Card(
        color: divclr,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[ 
              Expanded(
                child: charts.BarChart( 
                  
                  barGroupingType: charts.BarGroupingType.grouped,
                  defaultRenderer:  charts.BarRendererConfig(
                       maxBarWidthPx: 8, 
                       ),
                  series, animate: true),
              )
            ],
          ),
        ),
      ),
    );

    
  }
}